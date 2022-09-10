import { Injectable } from '@nestjs/common';
import { v2 } from 'cloudinary';
import { bufferToStream } from './heper';

@Injectable()
export class UploadService {
  // constructor() {}

  async uploadImage(file: Express.Multer.File): Promise<any> {
    return new Promise((resolve, reject) => {
      const upload = v2.uploader.upload_stream((error, result) => {
        if (error) return reject(error);
        resolve({ url: result.secure_url });
      });
      bufferToStream(file.buffer).pipe(upload);
    });
  }
}
