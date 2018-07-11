```
#         if self.download_params and self.get_argument("download", False):
#             yield self.get_csv()
#         else:
#     @tornado.gen.coroutine
#     def get_csv(self):
#         attachment_header = "attachment; filename={filename}-{datetime:%Y-%m-%d}.csv".format( 
#             filename=self.download_params["file_name"], 
#             datetime=datetime.datetime.now())
#         csv_headers = ';'.join(self.download_params['headers']) + "\r\n"
#             
#         self.set_header("Content-Type", "application/force-download")
#         self.set_header("Content-Disposition", attachment_header)
#         self.write(csv_headers)
#         
#         yield db.map_many(
#             table, 
#             lambda d: data.append(';'.join(self.download['map_func'](d))),
#             *self.download['sort'], 
#             **self.download['search'])
#         data = []
#         yield self.table.map_many(
#             )
#         self.write('\r\n'.join(data))
```
