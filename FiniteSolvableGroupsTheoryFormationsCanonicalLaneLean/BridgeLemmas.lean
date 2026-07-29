import FormationClosure

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

def bridgeClosed (A : FormationAdmittedObject) : Prop :=
  FormationWitnessClosed A

theorem bridge_from_admissible_class (A : FormationAdmittedObject) :
    bridgeClosed A :=
  by exact A.conclusion

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse
