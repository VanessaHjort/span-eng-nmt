# Spanish to English Neural Machine Translation
## Introduction
This project is an implementation of an attention-based Neural Machine Translation (NMT) model adapted from the [TensorFlow Neural Machine Translation with Attention tutorial](https://www.tensorflow.org/text/tutorials/nmt_with_attention). The goal is to gain hands-on experience with sequence-to-sequence models and attention mechanisms while improving my understanding of machine translation. This project serves as both a learning opportunity and a portfolio piece as I work toward a career in machine translation.

My focus was to build upon the NMT model outlined in the TensorFlow tutorial—roughly based on *Effective Approaches to Attention-based Neural Machine Translation* (Luong et al., 2015)—and experiment with modifications to improve Spanish-English translation performance. In the future, I hope to work on translation models for specific dialects and under-resourced languages.

## Background

Neural Machine Translation (NMT) is a deep learning-based approach to automated translation that has significantly improved the quality of machine-generated translations. Unlike traditional phrase-based translation systems, which rely on manually designed rules and statistical methods, NMT employs deep neural networks to learn complex language patterns and generate more natural translations.

A standard NMT model is built using an encoder-decoder architecture, where an encoder processes the input sequence (e.g., a sentence in Spanish) and converts it into a vector representation. The decoder then generates the output sequence (e.g., the translated sentence in English) from this vector. However, early NMT models struggled with long sentences, as encoding everything into a single fixed-length vector limited the model’s ability to retain important information. For example, in sentences with long-range dependencies (e.g., *El perro que corre por el parque es muy rápido*, where there is a dependency between both *perro* and *es* and *perro* and *rápido*), or translation pairs where the source and target sentences differ in length (e.g., *Je suis allé au marché* vs. *I went to the market*), early NMT models often failed to capture the nuanced relationships between words or maintain accuracy in the translation. These phenomena, which are common across many languages, highlight the inherent complexity of machine translation, a complexity that traditional NMT models struggled to capture effectively.

Attention mechanisms were introduced to address this issue (Bahdanau et al., 2015; Luong et al., 2016). The attention mechanism allows the decoder to focus on different parts of the input sequence at each decoding step, dynamically weighting words based on their relevance to the current translation. Instead of relying on a fixed representation of the entire source sentence, the decoder can attend to specific words or phrases at each step of translation. This enables each word in the output to draw relevant information from any part of the input sentence, rather than translating based on a static word or phrase. As a result, translation fluency and accuracy are significantly improved, particularly for long or complex sentences where dependencies between words are far apart.

Luong et al. (2016) introduced global and local attention strategies, refining how attention is applied to improve translation quality. Their approach became a foundation for modern NMT systems and inspired further advancements, including the development of Transformer-based models such as Google’s Transformer (Vaswani et al., 2017), which later led to state-of-the-art models like GPT and T5.

This project implements an attention-based NMT model following the TensorFlow tutorial’s approach, evaluating its performance and exploring potential improvements.

## Project Description

This project implements an attention-based NMT model for **Spanish-to-English** translation, following the **sequence-to-sequence (seq2seq) architecture** with attention. The implementation is adapted from the [TensorFlow Neural Machine Translation with Attention tutorial](https://www.tensorflow.org/text/tutorials/nmt_with_attention), which is loosely based on *Effective Approaches to Attention-based Neural Machine Translation* (Luong et al., 2015). The model is trained and evaluated on parallel sentence pairs to improve translation accuracy. 

### Dataset  
The dataset used in this project comes from **Anki's Spanish-English dataset**, which consists of selected sentence pairs from the **Tatoeba Project**. The Tatoeba Project is an open-source collection of multilingual sentence pairs, contributed and reviewed by volunteers. These parallel sentences provide a diverse set of real-world translations for training the model. The dataset is preprocessed to handle tokenization, padding, and special tokens for sentence start and end.

### Model Architecture  
- **Bidirectional LSTM encoder** to capture context from both directions.  
- **Luong-style attention mechanism** to dynamically focus on relevant source words during decoding.  
- **LSTM decoder** with attention-weighted context to improve translation fluency.  
- **Beam search decoding** for better output selection compared to greedy decoding.  

### Tools & Frameworks  
- **TensorFlow/Keras** for model training and experimentation.  
- **NumPy & Pandas** for data processing and analysis.  
- **Matplotlib & Seaborn** for visualizing model performance and attention weights.  
- **Docker & AWS** for deployment and scalability.  

This project is a hands-on learning experience to strengthen my understanding of machine translation, attention mechanisms, and deep learning frameworks. It also serves as a portfolio piece showcasing my ability to implement and experiment with modern NMT techniques.


## References
- Dzmitry Bahdanau, Kyunghyun Cho, and Yoshua Bengio. 2015. Neural machine translation by jointly learning to align and translate. ICLR.
- Minh-Thang Luong, Hieu Pham, and Christopher D Manning. 2015. Effective approaches to attention-based neural machine translation. EMNLP.
- Ilya Sutskever, Oriol Vinyals, and Quoc V. Le. 2014. Sequence to sequence learning with neural networks. NIPS.
