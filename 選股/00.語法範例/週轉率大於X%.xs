{@type:filter}
Input: X(5, "週轉率%");

settotalbar(3);

Value1 = GetField("週轉率","D");
if Value1 > X then Ret = 1;

outputfield1(Value1, "週轉率%");

