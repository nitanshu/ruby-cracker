findMaximumPositiveIndex(int[] arr) {

    min=arr[0],max=arr[0],minIndex=0,maxIndex=0;
    int maximumIndex = 0;
    for(int i=0;i<arr.length;i++){
        min = arr[i];
        minIndex=i;
        boolean isMaxPresent = false;
        for(int j=i;j<arr.length;j++)
        {
            if(arr[j] > min){
                max = arr[j];
                maxIndex = j;
                isMaxPresent = true;
            }
        }
        if(maximumIndex < ((maxIndex - minIndex) +1) )
            maximumIndex = (maxIndex - minIndex) + 1;
    }
    return maximumIndex;

}