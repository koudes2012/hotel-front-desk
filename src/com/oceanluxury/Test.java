package com.oceanluxury;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Test {

	public static void main(String[] args) {
		Test test = new Test();
		int[][] strs = new int[][]{{0,0},{1,1},{0,0}};
		test.maxPoints(strs);
	
	}

    public int maxPoints(int[][] points) {
        
        int ret = 0;
        
        if (points.length < 3) {
            return points.length;
        }
        
        for (int i=0; i<points.length; i++) {
            
            Map<Double, Integer> map = new HashMap<>();
            int countSame = 0;
            for (int j=0; j<points.length; j++) {
                
                if (i!=j) {
                    
                    if (points[i][1]==points[j][1] && points[i][0]==points[j][0]) {
                        countSame ++;
                    } else {
                        double temp = Double.MAX_VALUE;
                        if (points[i][0]-points[j][0] != 0) {
                            temp = (double)(points[i][1]-points[j][1])/(points[i][0]-points[j][0]);
                        }

                        int value = map.getOrDefault(temp, 1);

                        map.put(temp, ++value);
                    }
                }
            }
            
            for (int value: map.values()) {
                ret = Math.max(value, ret) + countSame;
            }
        }
        
        return ret;
    }
   
}
