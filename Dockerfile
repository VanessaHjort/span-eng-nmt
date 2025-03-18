FROM tensorflow/serving:2.17.0

WORKDIR /app

COPY models /models 

CMD ["/usr/bin/tensorflow_model_server", "--rest_api_port=8501", "--model_name=translator", "--model_base_path=/models/translator"]
