/// @description Returns an array of only the elments in the first array that are not present in the second array


function get_new_elements(arr1, arr2){
	
	var size = array_length(arr1);
	var unique_elements = [];
	
	for (var i = 0; i < size; ++i) {
	    if !array_contains(arr2, arr1[i]){
			 array_push(unique_elements, arr1[i]);
		 }
	}
	
	return unique_elements;
	
}