# Criando Container com Docker


### Problema
- <p align="justify">Você está desenvolvendo uma aplicação web usando o Django e precisa implantá-la em um servidor de produção. No entanto, a aplicação possui algumas configurações específicas que precisam ser consideradas durante a implantação, tais como a criação de um superuser para acessar a API e a utilização de bibliotecas externas. Para garantir que a aplicação seja implantada corretamente e sem conflitos de dependência, você decide usar o Docker para criar um ambiente isolado.</p>

### Ferramenta
<img src="https://img.shields.io/static/v1?label=docker&message=ferramenta &color=grenn&style=for-the-badge&logo=DOCKER"/>

### Como Rodar a Aplicação :arrow_forward:

<p align="justify">Instale o Docker</p>

```
https://docs.docker.com/engine/install/ubuntu/
```
<p align="justify">Rodando aplicação</p>

```
docker build -t nome-imagem .
docker run -it --network=host teste
```
