# TPCH for Databend

### Steps to use
1. [Deploy databend](https://databend.rs/doc/deploy).
2. Use `prepare/schema.sql` to create tpch tables.
3. Generate tpch data and executable query text.
   ```sh
   # scale_factor: scale of the database population. scale 1.0 represents ~1 GB of data
   ./tpch.sh <scale_factor>
   ```
4. Run `insert_data.sh` to insert tpch data to databend.
5. Run queries in `executable_queries`.
