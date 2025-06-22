# R2CASS 2025 Workshop: Interactive Reproducibility Demo (R)

This repository is designed for the **"Interactive Replicability Session"** at the **R2CASS 2025 Workshop (Social Science Meets Web Data: Reproducible and Reusable Computational Approaches)**, held in conjunction with ICWSM 2025.

It serves as the **primary interactive demonstration** on how to make computational social science research reproducible using **R** and **MyBinder.org**.

Our goal is to demonstrate that with proper configuration, anyone can launch and run your analysis in a pre-configured environment, directly from a web browser, without any local setup headaches.

## 🚀 Launch and Explore on Binder

The easiest way to explore this project is to launch it directly on MyBinder.org. This will open an interactive RStudio environment in your web browser, pre-loaded with all the necessary R packages and the dataset.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/lorraine-dev/ICWSM-Reproducibility-R-Demo/HEAD)

**Click the "Launch Binder" badge above to get started!**

## Project Overview

This demo analyzes a subset of the **LIAR dataset**, which contains politician statements and their fact-checking truth ratings from PolitiFact. This type of data is highly relevant to research on misinformation, political communication, and public discourse.

### Dataset Citation & Source

The original LIAR dataset was created by:

**William Yang Wang. 2017. "Liar, Liar Pants on Fire": A New Benchmark Dataset for Fake News Detection. In *Proceedings of the 55th Annual Meeting of the Association for Computational Linguistics (Volume 2: Short Papers)*, pages 422–426, Vancouver, Canada. Association for Computational Linguistics.**

Our subset of the dataset was downloaded from [Kaggle: LIAR Dataset for Fake News Detection](https://www.kaggle.com/datasets/doanquanvietnamca/liar-dataset), where it is listed under the Apache 2.0 License.

## Repository Structure

The repository is organized into distinct folders for clarity and best practices in reproducible research:

* `data/`: Contains the raw input dataset (`dataset.tsv`) used for the analysis.
* `scripts/`: Holds the R Markdown document (`analyze_claims.Rmd`) containing the R code for data loading, analysis, and visualization. It also contains the rendered HTML output (`analyze_claims.html`) and generated plots.
* `binder/`: Contains configuration files (`install.R`, `runtime.txt`) that tell MyBinder.org how to build the computational environment (e.g., specific R version and library dependencies).
* `LICENSE`: Specifies the open-source license for *this project's code* (MIT License).
* `README.md`: This file, providing an overview and instructions.

## Analysis Performed (`scripts/analyze_claims.Rmd`)

The R Markdown document demonstrates the following steps:

1.  **Data Loading & Inspection:** Loading the `dataset.tsv` file and initial inspection of its structure.
2.  **Truth Rating Distribution:** Analyzing the frequency of different fact-checking truth ratings (e.g., "true", "false", "pants-on-fire").
3.  **Truth Rating Visualization:** Creating a bar chart to visualize the distribution of truth ratings, using a semantic color scale (red for false, green for true).
4.  **Party Affiliation Analysis:** Examining the distribution of claims by political party affiliation.
5.  **Party Affiliation Visualization:** Creating a bar chart for claims by party, grouping less frequent parties into an "Other" category for clarity.
6.  **Stacked Bar Chart: Truth by Party:** A deeper dive into the relationship between party affiliation and truth ratings using a proportional stacked bar chart, again with the semantic truth rating colors.
7.  **Session Information:** Provides details on the R environment and package versions used for full reproducibility.

## How to Use (Once Launched on Binder)

1.  After launching the Binder environment, you will see an RStudio interface in your browser.
2.  In the "Files" pane on the bottom-right, navigate to the `scripts/` folder.
3.  Open `analyze_claims.Rmd`.
4.  You can then:
    * Click the **"Knit"** button in the RStudio toolbar to run the entire R Markdown document and generate the HTML report directly within the Binder environment.
    * Run individual code chunks by clicking the small green "Run Current Chunk" arrow in the top-right corner of each code block.
5.  The generated HTML report (`analyze_claims.html`) and plots (`truth_ratings_distribution.png`, `party_affiliation_distribution.png`, `party_vs_truth_stacked.png`) will be saved in the `scripts/` folder within the Binder environment, which you can download or view.

## For Python Users

A similar reproducible demo, built with Python, is available in the companion repository:
[ICWSM-Reproducibility-Python-Demo](https://github.com/lorraine-dev/ICWSM-Reproducibility-Python-Demo)

## License

This project's code is licensed under the [MIT License](LICENSE). The LIAR dataset itself is distributed under the Apache 2.0 License.