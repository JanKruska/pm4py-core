FROM python:3.10

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install nano vim
RUN apt-get -y install git
RUN apt-get -y install python3-pydot graphviz
RUN apt-get -y install python3-tk
RUN apt-get -y install zip unzip
RUN apt-get -y install gcc gfortran python-dev libopenblas-dev liblapack-dev
RUN apt-get -y install g++ libboost-all-dev libncurses5-dev wget
RUN apt-get -y install libtool flex bison pkg-config g++ libssl-dev automake
RUN apt-get -y install libjemalloc-dev libboost-dev libboost-filesystem-dev libboost-system-dev libboost-regex-dev python3-dev autoconf flex bison cmake
RUN apt-get -y install libxml2-dev libxslt-dev libfreetype6-dev libsuitesparse-dev
RUN pip install -U cvxopt
RUN pip install -U wheel six pytest
RUN pip install asttokens==2.0.8 backcall==0.2.0 colorama==0.4.5 cycler==0.11.0 decorator==5.1.1 deprecation==2.1.0 executing==1.0.0 fonttools==4.37.1 graphviz==0.20.1 intervaltree==3.1.0 ipython==8.5.0 jedi==0.18.1 jinja2==3.1.2 jsonpickle==2.2.0 kiwisolver==1.4.4 lxml==4.9.1 MarkupSafe==2.1.1 matplotlib==3.5.3 matplotlib-inline==0.1.6 mpmath==1.2.1 networkx==2.8.6 numpy==1.23.3 packaging==21.3 pandas==1.4.4 parso==0.8.3 pickleshare==0.7.5 pillow==9.2.0 prompt-toolkit==3.0.31 pure-eval==0.2.2 pydotplus==2.0.2 pygments==2.13.0 pyparsing==3.0.9 python-dateutil==2.8.2 pytz==2022.2.1 pyvis==0.2.1 scipy==1.9.1 six==1.16.0 sortedcontainers==2.4.0 stack-data==0.5.0 stringdist==1.0.9 sympy==1.11.1 tqdm==4.64.1 traitlets==5.4.0 wcwidth==0.2.5 

COPY . /app
RUN cd /app && python setup.py install
