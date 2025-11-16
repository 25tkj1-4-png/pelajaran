import streamlit as st
import json

st.title("📚 Jadwal Pelajaran Sekolah")

# Baca file JSON
with open("jadwal.json", "r") as f:
    jadwal = json.load(f)

hari_list = list(jadwal.keys())

hari = st.selectbox("Pilih hari:", hari_list)

st.subheader(f"Jadwal hari {hari}:")
for pelajaran in jadwal[hari]:
    st.write(f"- {pelajaran}")
