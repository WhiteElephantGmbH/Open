package body winword.OCXEvents_Object is

   procedure GotFocus
     (This : OCXEvents_Type)
   is
   begin
      Invoke (This, OCXEvents_GotFocus);
   end GotFocus;

   procedure LostFocus
     (This : OCXEvents_Type)
   is
   begin
      Invoke (This, OCXEvents_LostFocus);
   end LostFocus;

end winword.OCXEvents_Object;

