## Continual Learning with Replay

Controlled sampling of memories for replay: 
* Retrieving the samples which are most interfered, i.e. whose prediction will be most negatively impacted by the foreseen parameters update. </br>
[[paper]](https://arxiv.org/abs/1908.04742) [[summary]](https://www.shortscience.org/paper?bibtexKey=journals/corr/1908.04742) [[video]](https://www.youtube.com/watch?v=wfb9UV_n8jg)
* Retrieving the samples which are hard to learn, i.e. whose entropy/confidence are high.
* Retrieving the samples which are easy to learn, i.e. the samples located near the decision boundary.
## (key) Requirements 
- Python 3.6
- Pytorch 1.4.0 for CUDA 9.*
- Pytorch 1.7.0 for CUDA 10.*

`pip install -r requirements.txt`


## Running Experiments

#### Replay Strategies

* ER_rand = Experience Replay baseline
* ER_least/largest_entropy = Experience Replay with entropy metric
* ER_least/largest_margin = Experience Replay with margin metric
* ER_least/largest_confidence = Exeprience Replay with confidence metric
* ER_least/largest_bayesian = Exeprience Replay with Bayesian dis-agreement metric
* ER_MIR = Experience Replay + Maximally Interfered Retrieval
* ER_kmeans = Exeprience Replay with K-means
* ER_coreset = Exeprience Replay with core-set

#### Experience Replay

MNIST:  </br>

`bash ER_MNIST_SPLIT.sh`

CIFAR-10:  </br>

`bash ER_CIFAR10.sh`

MiniImagenet:  </br>

`bash ER_MINIIMAGENET.sh`

OpenLORIS:  </br>

`bash ER_OPENLORIS.sh`


#### Generative Replay

MNIST:  </br>

`bash GR_MNIST.sh`
 
## Logging

Logging is done with [Weights & Biases](https://www.wandb.com/) and can be turned on like this: </br>
`python <method>_main.py --log online`


## Acknowledgements 
We would like to thank authors of the following repositories (from which we borrowed code of data loader and MIR methods) for making the code work. </br>
* https://github.com/riannevdberg/sylvester-flows
* https://github.com/optimass/Maximally_Interfered_Retrieval
