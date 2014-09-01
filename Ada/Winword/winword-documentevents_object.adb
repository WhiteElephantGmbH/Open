package body winword.DocumentEvents_Object is

   procedure uNew
     (This : DocumentEvents_Type)
   is
   begin
      Invoke (This, DocumentEvents_uNew);
   end uNew;

   procedure Open
     (This : DocumentEvents_Type)
   is
   begin
      Invoke (This, DocumentEvents_Open);
   end Open;

   procedure Close
     (This : DocumentEvents_Type)
   is
   begin
      Invoke (This, DocumentEvents_Close);
   end Close;

end winword.DocumentEvents_Object;

