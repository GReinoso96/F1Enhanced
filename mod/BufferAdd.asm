.ifdef JPN
    .definelabel    Manage_Lazy_Buffer,     0x098db7d8
    .definelabel    Crouch_Gather_Buffer,   0x098f9988
.elseifdef USA
    .definelabel    Manage_Lazy_Buffer,     0x098dc0c8
    .definelabel    Crouch_Gather_Buffer,   0x098fa270
.else ; EUR
    .definelabel    Manage_Lazy_Buffer,     0x098dcec0
    .definelabel    Crouch_Gather_Buffer,   0x098FB068
.endif

