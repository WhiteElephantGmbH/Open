with GNATCOM.Dispinterface;

package winword.DocumentEvents_Object is

   type DocumentEvents_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure uNew
     (This : DocumentEvents_Type);

   procedure Open
     (This : DocumentEvents_Type);

   procedure Close
     (This : DocumentEvents_Type);

end winword.DocumentEvents_Object;

