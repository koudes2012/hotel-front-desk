package com.oceanluxury;

public class Test {

	public static void main(String[] args) {
		Test test = new Test();
		int[] nums = new int[]{5,2,4,1,3,6,0};
		test.sort(nums, 0, nums.length-1, 2);
		
		for (int num:nums) {
			System.out.println(num);
		}
	}

	public int findKthLargest(int[] nums, int k) {
        sort(nums, 0, nums.length-1, k);
        return nums[nums.length-k];
   }
   
   public void sort(int[] nums, int l, int r, int k) {
       if (l >= r) {
           return;
       }
       
       int p = partition(nums, l, r);
       if (p == nums.length - k) {
           return;
       }
       sort(nums, l, p-1, k);
       sort(nums, p+1, r, k);
   }
   
   public int partition(int[] nums, int l, int r) {
       
       int v = nums[l];
       int j = l;
       
       for (int i=l+1; i<=r; i++) {
           if (nums[i]<v) {
               int temp = nums[j+1];
               nums[j+1] = nums[i];
               nums[i] = temp;
               j++;
           }
       }
       
        int temp = nums[l];
        nums[l] = nums[j];
        nums[j] = temp;
       
       return j;

   }
   
}
