FROM rasa/rasa:3.0.3-full

# Utiliza o root user para instalar as dependências
USER root

# Instala as dependências
RUN python -m spacy download pt_core_news_sm

# Seguindo as boas práticas não executo o código com user root
USER 1001

EXPOSE 5055