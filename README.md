# kimia-farma-analytics
Analisis Kinerja Bisnis Kimia Farma Tahun 2020–2023 menggunakan BigQuery dan Google Looker Studio sebagai bagian dari Project-Based Internship Data Analyst.

# Analisis Kinerja Bisnis Kimia Farma (2020–2023)

**Nama:** [Nidda Adzkya N]  
**Peran:** Big Data Analyst Intern  
**Program:** Project-Based Internship  
**Tools:** Google BigQuery, Google Looker Studio, GitHub  

---

## Deskripsi Proyek
Proyek ini bertujuan untuk menganalisis kinerja bisnis Kimia Farma selama periode tahun 2020 hingga 2023.  
Analisis dilakukan dengan mengolah data transaksi, produk, dan kantor cabang menggunakan Google BigQuery, kemudian divisualisasikan dalam bentuk dashboard interaktif menggunakan Google Looker Studio.

Hasil analisis diharapkan dapat memberikan insight terkait performa penjualan, profitabilitas, dan kualitas layanan Kimia Farma di berbagai cabang dan provinsi di Indonesia.

---

## Dataset yang Digunakan
Dataset diimpor ke dalam BigQuery dan terdiri dari empat tabel utama:

1. **kf_final_transaction**  
   Berisi data transaksi penjualan, termasuk tanggal transaksi, harga, diskon, dan rating transaksi.

2. **kf_product**  
   Berisi informasi produk obat, seperti nama produk dan kategori produk.

3. **kf_kantor_cabang**  
   Berisi informasi cabang Kimia Farma, termasuk nama cabang, kota, provinsi, dan rating cabang.

4. **kf_inventory**  
   Berisi data stok produk di setiap cabang (digunakan untuk analisis tambahan).

---

## Proses Analisis
Tahapan analisis yang dilakukan dalam proyek ini meliputi:
1. Import dataset ke Google BigQuery
2. Data validation dan eksplorasi awal
3. Penggabungan (JOIN) tabel transaksi, produk, dan kantor cabang
4. Pembuatan **tabel analisa** sebagai tabel utama
5. Perhitungan metrik bisnis (nett sales dan nett profit)
6. Visualisasi data menggunakan Google Looker Studio

---

## Perhitungan Metrik Bisnis

### Nett Sales
nett_sales = price - (price × discount_percentage / 100)

### Persentase Gross Laba
| Harga Produk | Persentase Laba |
|-------------|----------------|
| ≤ Rp50.000 | 10% |
| > Rp50.000 – Rp100.000 | 15% |
| > Rp100.000 – Rp300.000 | 20% |
| > Rp300.000 – Rp500.000 | 25% |
| > Rp500.000 | 30% |

### Nett Profit
nett_profit = nett_sales × persentase_gross_laba

---

## 🗃️ Struktur Repository

```
kimia-farma-analytics/
├── README.md
├── sql/
│ └── create_analysis_table.sql
├── dashboard/
│ └── looker_studio_link.txt
└── presentation/
└── final_presentation.pdf
```

## Dashboard
Dashboard dibuat menggunakan Google Looker Studio berdasarkan tabel analisa di BigQuery.

Link dashboard:  
https://lookerstudio.google.com/reporting/c6aee3a2-9703-4de7-a64d-bc56de6d4994

---

## Insight Utama (Ringkas)
- Perbandingan pendapatan Kimia Farma dari tahun ke tahun
- Cabang dan provinsi dengan total transaksi dan nett sales tertinggi
- Analisis rating cabang vs rating transaksi
- Distribusi profit per provinsi di Indonesia
