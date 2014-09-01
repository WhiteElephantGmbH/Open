with GNATCOM.Dispinterface;

package winword.Version_Object is

   type Version_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Version_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Version_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Version_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SavedBy
     (This : Version_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Comment
     (This : Version_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Date
     (This : Version_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : Version_Type)
     return GNATCOM.Types.VARIANT;

   procedure OpenOld
     (This : Version_Type);

   procedure Delete
     (This : Version_Type);

   function Open
     (This : Version_Type)
     return GNATCOM.Types.VARIANT;

end winword.Version_Object;

