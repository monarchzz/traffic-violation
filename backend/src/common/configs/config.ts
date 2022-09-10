import type { Config } from './config.interface';

const config: Config = {
  nest: {
    port: 8000,
  },
  cors: {
    enabled: true,
  },
  swagger: {
    enabled: true,
    title: 'Nestjs FTW',
    description: 'The nestjs API documentation',
    version: '1.0',
    path: 'api',
  },
  security: {
    expiresIn: '1d',
    refreshIn: '7d',
    bcryptSaltOrRound: 10,
  },
};

export default (): Config => config;
