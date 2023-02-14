import { NestFactory } from '@nestjs/core';
import { Transport, MicroserviceOptions } from '@nestjs/microservices';
import { AppModule } from './app.module';
import { Logger } from "@nestjs/common";

const logger = new Logger();

async function bootstrap() {
  const app = await NestFactory.createMicroservice<MicroserviceOptions>(
      AppModule,
      {
        transport: Transport.TCP,
          options: {
              host: "0.0.0.0",
              port: 8888
          }
      },
  );
  await app.listen();
  logger.log('Microservice is listening');
}

bootstrap();
