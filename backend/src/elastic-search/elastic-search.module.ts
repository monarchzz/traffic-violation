import { Global, Module } from '@nestjs/common';
import { ElasticsearchModule } from '@nestjs/elasticsearch';
import { ElasticSearchService } from './elastic-search.service';

@Global()
@Module({
  imports: [
    ElasticsearchModule.registerAsync({
      useFactory: () => ({
        node: process.env.ES_NODE,
      }),
    }),
  ],
  providers: [ElasticSearchService],
  exports: [ElasticSearchService],
})
export class ElasticSearchModule {}
