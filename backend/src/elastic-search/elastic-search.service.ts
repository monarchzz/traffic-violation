import { Injectable } from '@nestjs/common';
import { ElasticsearchService } from '@nestjs/elasticsearch';

@Injectable()
export class ElasticSearchService {
  constructor(private readonly esService: ElasticsearchService) {}

  create(index: string, dto: any) {
    return this.esService.index({
      index: index,
      body: {
        ...dto,
      },
    });
  }

  update(index: string, id: string, dto: any) {
    const script = Object.entries(dto).reduce((result, [key, value]) => {
      if (value != undefined) {
        if (Array.isArray(value)) {
          return `${result} ctx._source.${key}=${JSON.stringify(value)};`;
        } else {
          return `${result} ctx._source.${key}='${value}';`;
        }
      }
      return result;
    }, '');

    return this.esService.updateByQuery({
      index: index,
      body: {
        query: {
          match: {
            _id: id,
          },
        },
        script: {
          source: script,
        },
      },
    });
  }

  delete(index: string, id: string) {
    return this.esService.deleteByQuery({
      index: index,
      body: {
        query: {
          match: {
            _id: id,
          },
        },
      },
    });
  }

  async isExisted(index: string, id: string): Promise<boolean> {
    const { body } = await this.esService.count({
      index: index,
      body: {
        query: {
          term: {
            _id: id,
          },
        },
      },
    });
    return body.count == 1;
  }

  async search(index: string, searchBody: any, size = 1000) {
    const { body } = await this.esService.search({
      size,
      index,
      body: searchBody,
    });

    const data = body.hits.hits.map((item) => ({
      _score: item._score,
      id: item._id,
      ...item._source,
    }));
    const total = body.hits.total.value;
    return {
      data,
      total,
    };
  }

  async isIndexExisted(index: string) {
    const { body } = await this.esService.indices.exists({
      index,
    });
    return body;
  }

  async ensureIndexCreated(index: string) {
    const { body } = await this.esService.indices.exists({
      index,
    });
    if (!body) {
      await this.esService.indices.create({
        index,
        body: {
          settings: {
            index: {
              number_of_shards: 1,
              number_of_replicas: 1,
              analysis: {
                analyzer: {
                  vn_analyzer: {
                    tokenizer: 'vi_tokenizer',
                    char_filter: ['html_strip'],
                    filter: ['icu_folding'],
                  },
                },
              },
            },
          },
          mappings: {
            properties: {
              sectionData: {
                type: 'text',
                analyzer: 'vn_analyzer',
              },
            },
          },
        },
      });
    }

    return body;
  }

  async deleteIndex(index: string) {
    return await this.esService.indices.delete({ index });
  }
}
