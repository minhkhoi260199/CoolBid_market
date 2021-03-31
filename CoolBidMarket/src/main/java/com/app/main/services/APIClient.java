package com.app.main.services;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class APIClient {
	private static Retrofit retrofit = null;

	public static Retrofit getClient() {
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		HttpLoggingInterceptor interceptor = new HttpLoggingInterceptor();
		interceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
		OkHttpClient client = new OkHttpClient.Builder().addInterceptor(interceptor).build();
		retrofit = new Retrofit.Builder().baseUrl("http://localhost:9596/api/")
				.addConverterFactory(GsonConverterFactory.create(gson)).client(client).build();
		return retrofit;
	}
}