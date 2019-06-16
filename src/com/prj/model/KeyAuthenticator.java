package com.prj.model;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

public class KeyAuthenticator {
	int flag = 0;
	String file_username, file_sig = null;
	String strLine;
	FileInputStream fstream;
	DataInputStream in;
	BufferedReader br;
	public String authenticator(String file, String key)throws IOException  {
		// TODO Auto-generated method stub
		try {

			fstream = new FileInputStream(file);
			in = new DataInputStream(fstream);
			br = new BufferedReader(new InputStreamReader(in));
			// String strLine;
			while ((strLine = br.readLine()) != null) {
				String tempStr = strLine.trim();
				String[] result = strLine.split(",");
				file_username = (result[0]);
				file_sig = (result[1]);
				flag = 1;
				if ((key.equals(file_sig))) {
					return "success";
				}
			}

			return "failure";
			
			
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			br.close();
			in.close();
			fstream.close();
		}
		return strLine;
	}

}
