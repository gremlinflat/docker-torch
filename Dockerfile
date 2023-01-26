# run kernel
FROM continuumio/miniconda3

# RUN conda install -y conda-forge jupyter
# RUN pip3 install torch
RUN conda install -y jupyter pandas numpy matplotlib scikit-learn tqdm
#apt-get install -y gcc python3-dev
# pip install -y ipykernel -U --user --force-reinstall

CMD [ "jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]