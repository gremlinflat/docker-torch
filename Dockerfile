# run kernel
FROM continuumio/miniconda3

# RUN conda install -y conda-forge jupyter
RUN conda install -y jupyter pandas numpy matplotlib scikit-learn tqdm
RUN pip3 install torch
RUN apt-get update
RUN apt-get install -y gcc python3-dev
RUN pip3 install ipykernel -U --user --force-reinstall

CMD [ "jupyter", "notebook", "--notebook-dir=${PWD}", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]
