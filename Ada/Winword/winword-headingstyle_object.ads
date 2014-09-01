with GNATCOM.Dispinterface;

package winword.HeadingStyle_Object is

   type HeadingStyle_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : HeadingStyle_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : HeadingStyle_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : HeadingStyle_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Style
     (This : HeadingStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Style
     (This : HeadingStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Level
     (This : HeadingStyle_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Level
     (This : HeadingStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Delete
     (This : HeadingStyle_Type);

end winword.HeadingStyle_Object;

