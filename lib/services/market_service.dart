import 'package:Munati/munati_apiclient/models/current_user.dart';

import '../munati_apiclient/models/models.dart';
import '../munati_apiclient/requests/market.dart';

class MarketService {
  late final MarketApi _marketApi;
  MarketService() {
    _marketApi = MarketApi();
  }

  Future<AuthResponse?> loadProducts() async {
    var productRequest = ProductRequest(
        server_key: server_key, user_id: Current.User.user_id ?? "");

    AuthResponse? value =
        await _marketApi.getProductsAsync(productRequest: productRequest);
    return value;
  }

  //     Future<(int, dynamic)> createProductAsync(String productTitle, String productDescription, String productLocation, String productPrice, String productCurrency, String productCategory, String productType, List<Attachments> attachments)
  //     {
  //         try
  //         {
  //             var multi = new MultipartFormDataContent(Guid.NewGuid().ToString())
  //             {
  //                 { new StringContent(InitializeWoWonder.Fun.A(DE.Js)), "server_key" },
  //                 { new StringContent(productTitle), "product_title" },
  //                 { new StringContent(productDescription), "product_description"},
  //                 { new StringContent(productLocation), "product_location" },
  //                 { new StringContent(productPrice), "product_price" },
  //                 { new StringContent(productCategory), "product_category" },
  //                 { new StringContent(productType), "product_type" } ,
  //                 { new StringContent(productCurrency), "currency" }
  //             };

  //             if (attachments.Count > 0)
  //             {
  //                 foreach (var attachment in attachments)
  //                 {
  //                     FileStream fs = File.OpenRead(attachment.FileUrl);
  //                     StreamContent sContent = new StreamContent(fs);
  //                     sContent.Headers.ContentType = new MediaTypeHeaderValue(MimeTypeMap.GetMimeType(attachment.FileUrl?.Split('.').LastOrDefault()));
  //                     sContent.Headers.ContentDisposition = new ContentDispositionHeaderValue("form-data")
  //                     {
  //                         Name = "images[]",
  //                         FileName = attachment.FileUrl?.Split('\\').LastOrDefault()?.Split('/').LastOrDefault()
  //                     };

  //                     multi.Add(sContent);
  //                 }
  //             }

  //             var request = new HttpRequestMessage
  //             {
  //                 RequestUri = new Uri(InitializeWoWonder.UrlsApi.CreateProduct + Current.AccessToken),
  //                 Method = HttpMethod.Post,
  //                 Content = multi
  //             };
  //             request.Headers.Add("Connection", new[] { "Keep-Alive" });
  //             var response = await RestHttp.RunRetryPolicyFunction(RestHttp.Client.SendAsync(request));

  //             //var response = await RestHttp.ApiClient.PostAsync(InitializeWoWonder.UrlsApi.ApiCreateProduct + Current.AccessToken, multi);
  //             String json = await response.Content.ReadAsStringAsync();
  //             var data = JsonConvert.DeserializeObject<CreateProductObject>(json);
  //             if (data?.Status == 200)
  //             {
  //                 return (200, data)!;
  //             }

  //             var error = JsonConvert.DeserializeObject<ErrorObject>(json);
  //             await Utils.PrintRequestInApplicationWindow(multi, json);
  //             return (400, error)!;
  //         }
  //         catch (Exception e)
  //         {
  //             Utils.DisplayReportResultTrack(e);
  //             return (404, "error : " + e.Message);
  //         }
  //     }

  //     /// <summary>
  //     ///
  //     /// </summary>
  //     /// <param name="userId">Get the products of this user ID, leave this if you want to get latest products.//not obligatory	</param>
  //     /// <param name="limit">Default: 35	</param>
  //     /// <param name="offset">Get albums before the offset ID.//not obligatory	</param>
  //     /// <param name="categoryId">Get the products under this category.//not obligatory	</param>
  //     /// <param name="keyword">	</param>
  //     /// <param name="distance"></param>
  //     /// <returns></returns>
  //     public static async Task<(int, dynamic)> GetProductsAsync(String userId = "", String limit = "", String offset = "", String categoryId = "", String keyword = "", String distance = "")
  //     {
  //         try
  //         {
  //             if (!Utils.Dc.IsC)
  //                 throw new Exception(InitializeWoWonder.Fun.BinaryD("WW91ciBjZXJ0aWZpY2F0ZSBpcyBpbnZhbGlkIGNvbnRhY3Qgc3VwcG9ydCB0ZWFtIGJlZm9yZSBhbnkgZnVydGhlciBhY3Rpb24g"));

  //             if (String.IsNullOrEmpty(InitializeWoWonder.Fun.Q(DE.Js)))
  //                 throw new Exception(InitializeWoWonder.Fun.BinaryD("WW91ciB3ZWJzaXRlIFVSTCBpcyBFbXB0eQ=="));

  //             var formContent = new FormUrlEncodedContent(new[]
  //             {
  //                 new KeyValuePair<String, String>("server_key", InitializeWoWonder.Fun.A(DE.Js)),
  //                 new KeyValuePair<String, String>("user_id", userId),
  //                 new KeyValuePair<String, String>("limit", limit),
  //                 new KeyValuePair<String, String>("offset", offset),
  //                 new KeyValuePair<String, String>("category_id", categoryId),
  //                 new KeyValuePair<String, String>("keyword", keyword),
  //                 new KeyValuePair<String, String>("distance", distance)
  //             });

  //             var response = await RestHttp.RunRetryPolicyFunction(RestHttp.Client.PostAsync(InitializeWoWonder.UrlsApi.GetProducts + Current.AccessToken, formContent));

  //             var expensiveResultTask = await Task.Run(() => RestHttp.DoExpensiveDeserializationMarket(response));
  //             return expensiveResultTask;
  //         }
  //         catch (Exception e)
  //         {
  //             Utils.DisplayReportResultTrack(e);
  //             return (404, "error : " + e.Message);
  //         }
  //     }

  //     public static async Task<(int, dynamic)> GetPurchasedProductsAsync(String limit = "", String offset = "")
  //     {
  //         try
  //         {
  //             if (!Utils.Dc.IsC)
  //                 throw new Exception(InitializeWoWonder.Fun.BinaryD("WW91ciBjZXJ0aWZpY2F0ZSBpcyBpbnZhbGlkIGNvbnRhY3Qgc3VwcG9ydCB0ZWFtIGJlZm9yZSBhbnkgZnVydGhlciBhY3Rpb24g"));

  //             if (String.IsNullOrEmpty(InitializeWoWonder.Fun.Q(DE.Js)))
  //                 throw new Exception(InitializeWoWonder.Fun.BinaryD("WW91ciB3ZWJzaXRlIFVSTCBpcyBFbXB0eQ=="));

  //             var formContent = new FormUrlEncodedContent(new[]
  //             {
  //                 new KeyValuePair<String, String>("server_key", InitializeWoWonder.Fun.A(DE.Js)),
  //                 new KeyValuePair<String, String>("type", "purchased"),
  //                 new KeyValuePair<String, String>("limit", limit),
  //                 new KeyValuePair<String, String>("offset", offset),
  //             });

  //             var response = await RestHttp.RunRetryPolicyFunction(RestHttp.Client.PostAsync(InitializeWoWonder.UrlsApi.ApiMarket + Current.AccessToken, formContent));

  //             var expensiveResultTask = await Task.Run(() => RestHttp.DoExpensiveDeserializationMarket(response));
  //             return expensiveResultTask;
  //         }
  //         catch (Exception e)
  //         {
  //             Utils.DisplayReportResultTrack(e);
  //             return (404, "error : " + e.Message);
  //         }
  //     }

  //     public static async Task<(int, dynamic)> AddToCartAsync(String id, String type)
  //     {
  //         try
  //         {
  //             if (!Utils.Dc.IsC)
  //                 throw new Exception(InitializeWoWonder.Fun.BinaryD("WW91ciBjZXJ0aWZpY2F0ZSBpcyBpbnZhbGlkIGNvbnRhY3Qgc3VwcG9ydCB0ZWFtIGJlZm9yZSBhbnkgZnVydGhlciBhY3Rpb24g"));

  //             if (String.IsNullOrEmpty(InitializeWoWonder.Fun.Q(DE.Js)))
  //                 throw new Exception(InitializeWoWonder.Fun.BinaryD("WW91ciB3ZWJzaXRlIFVSTCBpcyBFbXB0eQ=="));

  //             var formContent = new FormUrlEncodedContent(new[]
  //             {
  //                 new KeyValuePair<String, String>("server_key", InitializeWoWonder.Fun.A(DE.Js)),
  //                 new KeyValuePair<String, String>("type", type),
  //                 new KeyValuePair<String, String>("product_id", id)
  //             });

  //             HttpResponseMessage response = null;
  //             switch (type)
  //             {
  //                 case "add_cart":
  //                     response = await RestHttp.RunRetryPolicyFunction(RestHttp.Client.PostAsync(InitializeWoWonder.UrlsApi.ApiMarket + Current.AccessToken, formContent));
  //                     break;
  //                 case "remove_cart":
  //                     response = await RestHttp.RunRetryPolicyFunction(RestHttp.Client.PostAsync(InitializeWoWonder.UrlsApi.ApiMarket + Current.AccessToken, formContent));
  //                     break;
  //             }

  //             String json = await response.Content.ReadAsStringAsync();
  //             var data = JsonConvert.DeserializeObject<MessageObject>(json);
  //             if (data.Status == 200)
  //             {
  //                 return (200, data);
  //             }
  //             else
  //             {
  //                 var error = JsonConvert.DeserializeObject<ErrorObject>(json);
  //                 await Utils.PrintRequestInApplicationWindow(formContent, json);
  //                 return (400, error);
  //             }
  //         }
  //         catch (Exception e)
  //         {
  //             Utils.DisplayReportResultTrack(e);
  //             return (404, "error : " + e.Message);
  //         }
  //     }

  //     public static async Task<(int, dynamic)> GetCartsAsync()
  //     {
  //         try
  //         {
  //             if (!Utils.Dc.IsC)
  //                 throw new Exception(InitializeWoWonder.Fun.BinaryD("WW91ciBjZXJ0aWZpY2F0ZSBpcyBpbnZhbGlkIGNvbnRhY3Qgc3VwcG9ydCB0ZWFtIGJlZm9yZSBhbnkgZnVydGhlciBhY3Rpb24g"));

  //             if (String.IsNullOrEmpty(InitializeWoWonder.Fun.Q(DE.Js)))
  //                 throw new Exception(InitializeWoWonder.Fun.BinaryD("WW91ciB3ZWJzaXRlIFVSTCBpcyBFbXB0eQ=="));

  //             var formContent = new FormUrlEncodedContent(new[]
  //             {
  //                 new KeyValuePair<String, String>("server_key", InitializeWoWonder.Fun.A(DE.Js)),
  //                 new KeyValuePair<String, String>("type", "checkout"),
  //             });

  //             HttpResponseMessage response = await RestHttp.RunRetryPolicyFunction(RestHttp.Client.PostAsync(InitializeWoWonder.UrlsApi.ApiMarket + Current.AccessToken, formContent));

  //             String json = await response.Content.ReadAsStringAsync();
  //             var data = JsonConvert.DeserializeObject<GetCartsObject>(json);
  //             if (data.Status == 200)
  //             {
  //                 return (200, data);
  //             }
  //             else
  //             {
  //                 var error = JsonConvert.DeserializeObject<ErrorObject>(json);
  //                 await Utils.PrintRequestInApplicationWindow(formContent, json);
  //                 return (400, error);
  //             }
  //         }
  //         catch (Exception e)
  //         {
  //             Utils.DisplayReportResultTrack(e);
  //             return (404, "error : " + e.Message);
  //         }
  //     }

  //     public static async Task<(int, dynamic)> ChangeQtyProductAsync(String id, String qty)
  //     {
  //         try
  //         {
  //             if (!Utils.Dc.IsC)
  //                 throw new Exception(InitializeWoWonder.Fun.BinaryD("WW91ciBjZXJ0aWZpY2F0ZSBpcyBpbnZhbGlkIGNvbnRhY3Qgc3VwcG9ydCB0ZWFtIGJlZm9yZSBhbnkgZnVydGhlciBhY3Rpb24g"));

  //             if (String.IsNullOrEmpty(InitializeWoWonder.Fun.Q(DE.Js)))
  //                 throw new Exception(InitializeWoWonder.Fun.BinaryD("WW91ciB3ZWJzaXRlIFVSTCBpcyBFbXB0eQ=="));

  //             var formContent = new FormUrlEncodedContent(new[]
  //             {
  //                 new KeyValuePair<String, String>("server_key", InitializeWoWonder.Fun.A(DE.Js)),
  //                 new KeyValuePair<String, String>("type", "change_qty"),
  //                 new KeyValuePair<String, String>("product_id", id),
  //                 new KeyValuePair<String, String>("qty", qty),
  //             });

  //             HttpResponseMessage response = await RestHttp.RunRetryPolicyFunction(RestHttp.Client.PostAsync(InitializeWoWonder.UrlsApi.ApiMarket + Current.AccessToken, formContent));
  //             String json = await response.Content.ReadAsStringAsync();
  //             var data = JsonConvert.DeserializeObject<MessageObject>(json);
  //             if (data.Status == 200)
  //             {
  //                 return (200, data);
  //             }
  //             else
  //             {
  //                 var error = JsonConvert.DeserializeObject<ErrorObject>(json);
  //                 await Utils.PrintRequestInApplicationWindow(formContent, json);
  //                 return (400, error);
  //             }
  //         }
  //         catch (Exception e)
  //         {
  //             Utils.DisplayReportResultTrack(e);
  //             return (404, "error : " + e.Message);
  //         }
  //     }

  //     public static async Task<(int, dynamic)> BuyProductAsync(String id)
  //     {
  //         try
  //         {
  //             if (!Utils.Dc.IsC)
  //                 throw new Exception(InitializeWoWonder.Fun.BinaryD("WW91ciBjZXJ0aWZpY2F0ZSBpcyBpbnZhbGlkIGNvbnRhY3Qgc3VwcG9ydCB0ZWFtIGJlZm9yZSBhbnkgZnVydGhlciBhY3Rpb24g"));

  //             if (String.IsNullOrEmpty(InitializeWoWonder.Fun.Q(DE.Js)))
  //                 throw new Exception(InitializeWoWonder.Fun.BinaryD("WW91ciB3ZWJzaXRlIFVSTCBpcyBFbXB0eQ=="));

  //             var formContent = new FormUrlEncodedContent(new[]
  //             {
  //                 new KeyValuePair<String, String>("server_key", InitializeWoWonder.Fun.A(DE.Js)),
  //                 new KeyValuePair<String, String>("type", "buy"),
  //                 new KeyValuePair<String, String>("address_id", id),
  //             });

  //             HttpResponseMessage response = await RestHttp.RunRetryPolicyFunction(RestHttp.Client.PostAsync(InitializeWoWonder.UrlsApi.ApiMarket + Current.AccessToken, formContent));
  //             String json = await response.Content.ReadAsStringAsync();
  //             var data = JsonConvert.DeserializeObject<MessageObject>(json);
  //             if (data.Status == 200)
  //             {
  //                 return (200, data);
  //             }
  //             else
  //             {
  //                 var error = JsonConvert.DeserializeObject<ErrorObject>(json);
  //                 await Utils.PrintRequestInApplicationWindow(formContent, json);
  //                 return (400, error);
  //             }
  //         }
  //         catch (Exception e)
  //         {
  //             Utils.DisplayReportResultTrack(e);
  //             return (404, "error : " + e.Message);
  //         }
  //     }

  //     /// <summary>
  //     ///
  //     /// </summary>
  //     /// <param name="productId"></param>
  //     /// <param name="productTitle"></param>
  //     /// <param name="productDescription"></param>
  //     /// <param name="productLocation"></param>
  //     /// <param name="productPrice"></param>
  //     /// <param name="productCurrency"></param>
  //     /// <param name="productCategory"></param>
  //     /// <param name="productType"></param>
  //     /// <param name="attachments"></param>
  //     /// <param name="productRemoveImages"></param>
  //     /// <returns></returns>
  //     public static async Task<(int, dynamic)> EditProductAsync(String productId, String productTitle, String productDescription, String productLocation, String productPrice, String productCurrency,
  //         String productCategory, String productType, List<Attachments> attachments, String productRemoveImages)
  //     {
  //         try
  //         {
  //             if (!Utils.Dc.IsC)
  //                 throw new Exception(InitializeWoWonder.Fun.BinaryD("WW91ciBjZXJ0aWZpY2F0ZSBpcyBpbnZhbGlkIGNvbnRhY3Qgc3VwcG9ydCB0ZWFtIGJlZm9yZSBhbnkgZnVydGhlciBhY3Rpb24g"));

  //             if (String.IsNullOrEmpty(InitializeWoWonder.Fun.Q(DE.Js)))
  //                 throw new Exception(InitializeWoWonder.Fun.BinaryD("WW91ciB3ZWJzaXRlIFVSTCBpcyBFbXB0eQ=="));

  //             var multi = new MultipartFormDataContent(Guid.NewGuid().ToString())
  //             {
  //                 { new StringContent(InitializeWoWonder.Fun.A(DE.Js)), "server_key" },
  //                 { new StringContent(productId), "product_id" },
  //                 { new StringContent(productTitle), "product_title" },
  //                 { new StringContent(productDescription), "product_description"},
  //                 { new StringContent(productLocation), "product_location" },
  //                 { new StringContent(productPrice), "product_price" },
  //                 { new StringContent(productCategory), "product_category" },
  //                 { new StringContent(productType), "product_type" },
  //                 { new StringContent(productCurrency), "currency" } ,
  //                 { new StringContent(productRemoveImages), "deleted_images_ids" }
  //             };

  //             if (attachments.Count > 0)
  //             {
  //                 foreach (var attachment in attachments)
  //                 {
  //                     if (attachment.FileUrl.Contains("http")) continue;

  //                     FileStream fs = File.OpenRead(attachment.FileUrl);
  //                     StreamContent sContent = new StreamContent(fs);
  //                     sContent.Headers.ContentType = new MediaTypeHeaderValue(MimeTypeMap.GetMimeType(attachment.FileUrl?.Split('.').LastOrDefault()));
  //                     sContent.Headers.ContentDisposition = new ContentDispositionHeaderValue("form-data")
  //                     {
  //                         Name = "images[]",
  //                         FileName = attachment.FileUrl?.Split('\\').LastOrDefault()?.Split('/').LastOrDefault()
  //                     };

  //                     multi.Add(sContent);
  //                 }
  //             }

  //             var request = new HttpRequestMessage
  //             {
  //                 RequestUri = new Uri(InitializeWoWonder.UrlsApi.EditProduct + Current.AccessToken),
  //                 Method = HttpMethod.Post,
  //                 Content = multi
  //             };
  //             request.Headers.Add("Connection", new[] { "Keep-Alive" });
  //             var response = await RestHttp.RunRetryPolicyFunction(RestHttp.Client.SendAsync(request));

  //             //var response = await RestHttp.ApiClient.PostAsync(InitializeWoWonder.UrlsApi.ApiEditProduct + Current.AccessToken, multi);
  //             String json = await response.Content.ReadAsStringAsync();
  //             var data = JsonConvert.DeserializeObject<MessageObject>(json);
  //             if (data?.Status == 200)
  //             {
  //                 return (200, data)!;
  //             }

  //             var error = JsonConvert.DeserializeObject<ErrorObject>(json);
  //             await Utils.PrintRequestInApplicationWindow(multi, json);
  //             return (400, error)!;
  //         }
  //         catch (Exception e)
  //         {
  //             Utils.DisplayReportResultTrack(e);
  //             return (404, "error : " + e.Message);
  //         }
  //     }

  // }
}
