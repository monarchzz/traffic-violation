import { Controller, Get, Query } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { DocumentService } from './document.service';

@ApiTags('Document')
@Controller('document')
export class DocumentController {
  constructor(private readonly documentService: DocumentService) {}

  @Get()
  getDocument(@Query('id') id: string) {
    return this.documentService.getDocument(id);
  }
}
