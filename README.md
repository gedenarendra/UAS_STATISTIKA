<p align="center"><img src="https://socialify.git.ci/gedenarendra/UAS_STATISTIKA/image?custom_description=I+GEDE+NARENDRA+YASA_2415091086_1-DPS%0AAnalisis+%26+interpretasi&amp;description=1&amp;font=Bitter&amp;language=1&amp;logo=https%3A%2F%2Fwww.svgrepo.com%2Fshow%2F306678%2Frstudio.svg&amp;name=1&amp;pattern=Overlapping+Hexagons&amp;stargazers=1&amp;theme=Light" alt="project-image"></p>

<p align="center"><img src="https://img.shields.io/badge/Analisis-Interpretasi-red" alt="shields">
<img src="https://img.shields.io/badge/R_Studio-blue" alt="shields"></p>

  
<h1>1. Analisis:</h1>

<h2>- Model Regresi Linier</h2>

Model regresi linier yang dibangun adalah hubungan antara Jumlah Peminat (variabel independen) dan Popularitas (variabel dependen) yang diformulasikan sebagai: Popularitas = 𝛽0 + 𝛽1 × Jumlah Peminat Popularitas = β0 + β1 ×Jumlah Peminat Dengan menggunakan fungsi lm() regresi linier sederhana dilakukan dan hasilnya dianalisis. Output summary(mod1) memberikan informasi tentang koefisien regresi nilai p dan R-squared yang menunjukkan seberapa baik model ini menjelaskan variabilitas data.<h2>- Cross-Validation</h2>

K-fold cross-validation (5 fold) dilakukan menggunakan paket caret untuk mengevaluasi stabilitas dan performa model. Hal ini untuk menghindari overfitting dan memberikan gambaran tentang seberapa baik model bekerja pada data yang tidak terlihat.<h2>- Uji Asumsi</h2>

### Uji Kenormalan Residuals (Lilliefors/Kolmogorov-Smirnov test) dilakukan untuk memeriksa apakah residual berdistribusi normal.

### Uji Non-Autokorelasi (Durbin-Watson Test) digunakan untuk menguji apakah residuals memiliki pola yang tidak terduga.

### Uji Homogenitas (Identik) dilakukan untuk melihat apakah varians residuals tetap konstan seiring dengan perubahan jumlah peminat.

<h2>- Visualisasi</h2>

### Scatter Plot digunakan untuk menunjukkan hubungan antara Jumlah Peminat dan Popularitas serta menggambarkan garis regresi.

### Histogram dari residuals digunakan untuk memeriksa distribusi kesalahan dari model.

### Q-Q Plot digunakan untuk memeriksa kenormalan residuals.

### Residuals vs Fitted Plot digunakan untuk melihat apakah terdapat pola dalam residuals yang bisa menunjukkan model yang tidak sepenuhnya tepat.

<h1>2. Interpretasi:</h1>

<h2>- Model Regresi Linier</h2>

Intercept (β0) dan Koefisien Jumlah Peminat (β1): Intercept memberikan gambaran tentang nilai Popularitas ketika Jumlah Peminat adalah 0 meskipun dalam kenyataannya hal ini tidak mungkin terjadi. Koefisien untuk Jumlah Peminat menunjukkan bahwa untuk setiap kenaikan 1 unit dalam jumlah peminat Popularitas diperkirakan akan berubah sesuai dengan nilai koefisien. Jika nilai p-value untuk koefisien sangat rendah (misalnya < 0.05) menunjukkan bahwa hubungan antara Jumlah Peminat dan Popularitasnya adalah signifikan.<h2>- Cross-Validation</h2>

Hasil cross-validation menunjukkan seberapa stabil model ini dalam memprediksi Popularitas berdasarkan Jumlah Peminat. Jika hasil dari berbagai fold menunjukkan hasil yang konsisten model dapat dianggap tidak overfit dan dapat diandalkan untuk prediksi di data yang tidak terlihat.<h2>- Uji Asumsi</h2>

### Kenormalan Residuals: ketika P-value > 0.05 pada uji Lilliefors menunjukkan bahwa residuals berdistribusi normal yang mendukung asumsi kenormalan pada regresi linier.

### Non-Autokorelasi: jika P-value > 0.05 pada uji Durbin-Watson menunjukkan bahwa tidak ada autokorelasi dalam residuals yang berarti tidak ada pola residuals yang signifikan.

### Homogenitas: Uji homogenitas menunjukkan bahwa varians residuals dapat dipengaruhi oleh Jumlah Peminat yang berarti asumsi homogenitas terpenuhi.

<h2>- Visualisasi</h2>

### Scatter Plot dengan garis regresi menunjukkan hubungan linear positif antara Jumlah Peminat dan Popularitas artinya semakin banyak peminat suatu bahasa pemrograman semakin tinggi popularitasnya.

### Histogram Residuals yang mendekati distribusi normal mengkonfirmasi asumsi kenormalan residuals.

### Q-Q Plot yang menunjukkan bahwa titik residual berada di sekitar garis normal menunjukkan bahwa residuals mendekati distribusi normal.

### Residuals vs Fitted Plot memberikan gambaran bahwa residuals tersebar secara acak meskipun ada sedikit pola residuals yang mendekati 0 yang perlu diperhatikan lebih lanjut.

<h2>Kesimpulan</h2>

Model regresi linier ini dapat digunakan untuk memprediksi popularitas bahasa pemrograman berdasarkan jumlah peminatnya. Asumsi dasar untuk regresi linier sebagian besar terpenuhi meskipun ada sedikit pola residuals yang perlu dipertimbangkan. Cross-validation menambah kepercayaan bahwa model ini dapat diterapkan dengan baik pada data yang tidak terlihat tanpa menunjukkan overfitting yang signifikan. Secara keseluruhan hasil analisis menunjukkan bahwa Jumlah Peminat memiliki hubungan yang signifikan dan positif dengan Popularitas bahasa pemrograman yang diteliti.
