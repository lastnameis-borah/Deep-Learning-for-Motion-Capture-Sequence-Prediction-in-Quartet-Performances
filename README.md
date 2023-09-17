# A run through the repository...
> MSc. Dissertation project submitted to School of Computer Science, University of Birmingham. (2023)


1. '[`MoCap Dataset`](https://github.com/lastnameis-borah/MSc-Dissertation/tree/main/MoCap%20Dataset)' directory holds all the marked MoCap recordings with .mat file extension.

2. In the directory '[`Pre-processing 1`](https://github.com/lastnameis-borah/MSc-Dissertation/tree/main/Pre-preocessing%201%20-%20Averaging%20markers)', use the .mat files from the previously mentioned directory and outputs four CSV files for all four instruments. These csv files hold the averaged marker values.

3. Repeat step 2 until all the files from the [`MoCap Dataset`](https://github.com/lastnameis-borah/MSc-Dissertation/tree/main/MoCap%20Dataset) directory are served.

4. Then make all the output from step 2 go through the [`reshaper.ipynb`](https://github.com/lastnameis-borah/MSc-Dissertation/blob/main/Pre-preocessing%202%20-%20Interpolation/reshaper.ipynb) file in the '[`Pre-processing 2`](https://github.com/lastnameis-borah/MSc-Dissertation/tree/main/Pre-preocessing%202%20-%20Interpolation)' directory.

5. This will upsample or downsample the timeseries to 6000 frames. Repeat step 4 for all the CSVs.

6. Following this, make the file go through the [`interpolation.ipynb`](https://github.com/lastnameis-borah/MSc-Dissertation/blob/main/Pre-preocessing%202%20-%20Interpolation/interpolation.ipynb) file in the same directory as step 4.

7. This will interpolate the gaps in the timeseries. Repeat step 6 for all the CSVs.

8. Resulting CSVs will be input to the LSTM model.

9. LSTM model is available in the [`Model_sequence.ipynb`](https://github.com/lastnameis-borah/MSc-Dissertation/blob/main/Model_sequence.ipynb) file.

10. Step 9 will output the predicted quartet sequence.

11. [`Model_Tempo.ipynb`](https://github.com/lastnameis-borah/MSc-Dissertation/blob/main/Model_Tempo.ipynb) holds the model to classify the tempo.

12. Step 11 marks the end of the proposed project.



Author @ @@ Anurag Borah @@ <br>
2023
