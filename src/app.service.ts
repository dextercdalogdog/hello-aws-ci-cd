import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return `Welcome to world ${process.env.APP_PORT}`;
  }
}
