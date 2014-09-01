with GNATCOM.Dispinterface;

package winword.OCXEvents_Object is

   type OCXEvents_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure GotFocus
     (This : OCXEvents_Type);

   procedure LostFocus
     (This : OCXEvents_Type);

end winword.OCXEvents_Object;

