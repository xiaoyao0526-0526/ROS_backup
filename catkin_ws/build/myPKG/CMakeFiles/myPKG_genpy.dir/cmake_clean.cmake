FILE(REMOVE_RECURSE
  "CMakeFiles/myPKG_genpy"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/myPKG_genpy.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
