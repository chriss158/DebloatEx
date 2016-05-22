.class public Lcom/android/nfc/cardemulation/LCardEmulationConfig;
.super Ljava/lang/Object;
.source "LCardEmulationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/LCardEmulationConfig$RoutePowerState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_VALUE:[I

.field private static final NXP_ROUTE_VALUE:[I

.field private static final PROTOCOL_MASK_ISO_DEP:I = 0x8

.field private static final ROUTE_SWITCH_OFF:I = 0x2

.field private static final ROUTE_SWITCH_ON:I = 0x1

.field private static final ROUTE_SWITCH_ON_LOCKED:I

.field private static final ROUTE_SWITCH_ON_SCREEN_OFF:I

.field private static final ROUTE_SWITCH_ON_SCREEN_UNLOCKED:I

.field protected static final ROUTING_LIST_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SCREENSTATE_CONFIG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;",
            ">;"
        }
    .end annotation
.end field

.field static final SCREEN_STATE_OFF:I = 0x1

.field static final SCREEN_STATE_ON_LOCKED:I = 0x2

.field static final SCREEN_STATE_ON_UNLOCKED:I = 0x3

.field private static final SS_ROUTE_VALUE:[I

.field private static final TAG:Ljava/lang/String; = "LCardEmulationConfig"

.field private static final TECH_MASK_A:I = 0x1

.field private static final TECH_MASK_B:I = 0x2

.field private static mObject:Lcom/android/nfc/cardemulation/LCardEmulationConfig;


# instance fields
.field private mConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;",
            "Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;",
            ">;"
        }
    .end annotation
.end field

.field private mRouteAidPowerState:I

.field private mSecureElement:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

.field private mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 19
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->DBG:Z

    .line 25
    new-array v0, v1, [I

    fill-array-data v0, :array_50

    sput-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->SS_ROUTE_VALUE:[I

    .line 26
    new-array v0, v1, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->NXP_ROUTE_VALUE:[I

    .line 28
    sget-object v0, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->nxp:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v1

    iget-object v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    if-ne v0, v1, :cond_4d

    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->NXP_ROUTE_VALUE:[I

    :goto_1f
    sput-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->DEFAULT_VALUE:[I

    .line 30
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->DEFAULT_VALUE:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->ROUTE_SWITCH_ON_SCREEN_UNLOCKED:I

    .line 31
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->DEFAULT_VALUE:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sput v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->ROUTE_SWITCH_ON_LOCKED:I

    .line 32
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->DEFAULT_VALUE:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    sput v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->ROUTE_SWITCH_ON_SCREEN_OFF:I

    .line 53
    new-instance v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig$1;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/LCardEmulationConfig$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 52
    sput-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->ROUTING_LIST_MAP:Ljava/util/Map;

    .line 64
    new-instance v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig$2;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/LCardEmulationConfig$2;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->SCREENSTATE_CONFIG_MAP:Ljava/util/Map;

    .line 70
    return-void

    .line 28
    :cond_4d
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->SS_ROUTE_VALUE:[I

    goto :goto_1f

    .line 25
    :array_50
    .array-data 4
        0x21
        0x11
        0x9
    .end array-data

    .line 26
    :array_5a
    .array-data 4
        0x1
        0x40
        0x80
    .end array-data
.end method

.method private constructor <init>(Lcom/lge/nfcconfig/NfcConfigure;)V
    .registers 3
    .param p1, "config"    # Lcom/lge/nfcconfig/NfcConfigure;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mRouteAidPowerState:I

    .line 82
    iget-object v0, p1, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    .line 83
    iget-object v0, p1, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mSecureElement:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    .line 84
    iget-object v0, p1, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    .line 85
    return-void
.end method

.method static synthetic access$0()I
    .registers 1

    .prologue
    .line 30
    sget v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->ROUTE_SWITCH_ON_SCREEN_UNLOCKED:I

    return v0
.end method

.method static synthetic access$1()I
    .registers 1

    .prologue
    .line 31
    sget v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->ROUTE_SWITCH_ON_LOCKED:I

    return v0
.end method

.method static synthetic access$2()I
    .registers 1

    .prologue
    .line 32
    sget v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->ROUTE_SWITCH_ON_SCREEN_OFF:I

    return v0
.end method

.method public static getInstance()Lcom/android/nfc/cardemulation/LCardEmulationConfig;
    .registers 1

    .prologue
    .line 238
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mObject:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    return-object v0
.end method

.method public static getInstance(Lcom/lge/nfcconfig/NfcConfigure;)Lcom/android/nfc/cardemulation/LCardEmulationConfig;
    .registers 2
    .param p0, "config"    # Lcom/lge/nfcconfig/NfcConfigure;

    .prologue
    .line 231
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mObject:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    if-nez v0, :cond_d

    if-eqz p0, :cond_d

    .line 232
    new-instance v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;-><init>(Lcom/lge/nfcconfig/NfcConfigure;)V

    sput-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mObject:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    .line 234
    :cond_d
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mObject:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    return-object v0
.end method


# virtual methods
.method public IsCEEnable_whenPowerOff(Z)Z
    .registers 8
    .param p1, "isOffHostRouting"    # Z

    .prologue
    .line 146
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->power_off:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    .line 147
    .local v0, "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    if-eq v0, v2, :cond_2c

    .line 148
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->config:Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    if-ne v0, v2, :cond_14

    if-nez p1, :cond_2c

    .line 147
    :cond_14
    const/4 v1, 0x0

    .line 149
    .local v1, "ret":Z
    :goto_15
    sget-boolean v2, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->DBG:Z

    const-string v3, "LCardEmulationConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCEEnable_whenPowerOff : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 150
    return v1

    .line 147
    .end local v1    # "ret":Z
    :cond_2c
    const/4 v1, 0x1

    goto :goto_15
.end method

.method public IsHCEConfig(ILcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;)Z
    .registers 5
    .param p1, "list"    # I
    .param p2, "type"    # Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    .prologue
    .line 223
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->SCREENSTATE_CONFIG_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {p0, v0, p2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;)Z

    move-result v0

    return v0
.end method

.method public IsHCEConfig(ILjava/lang/String;)Z
    .registers 5
    .param p1, "list"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 215
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->SCREENSTATE_CONFIG_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {p0, v0, p2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public IsHCEConfig(I[Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;)Z
    .registers 5
    .param p1, "list"    # I
    .param p2, "types"    # [Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    .prologue
    .line 227
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->SCREENSTATE_CONFIG_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {p0, v0, p2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;[Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;)Z

    move-result v0

    return v0
.end method

.method public IsHCEConfig(I[Ljava/lang/String;)Z
    .registers 5
    .param p1, "list"    # I
    .param p2, "types"    # [Ljava/lang/String;

    .prologue
    .line 219
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->SCREENSTATE_CONFIG_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {p0, v0, p2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;)Z
    .registers 5
    .param p1, "list"    # Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    .param p2, "type"    # Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    .prologue
    const/4 v0, 0x0

    .line 185
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 189
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Ljava/lang/String;)Z
    .registers 5
    .param p1, "list"    # Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 176
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 177
    :cond_a
    const/4 v1, 0x0

    .line 181
    :goto_b
    return v1

    .line 179
    :cond_c
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    invoke-virtual {v1}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "configvalue":Ljava/lang/String;
    :goto_20
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_b

    .line 179
    .end local v0    # "configvalue":Ljava/lang/String;
    :cond_25
    const-string v0, ""

    goto :goto_20
.end method

.method public IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;[Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;)Z
    .registers 6
    .param p1, "list"    # Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    .param p2, "types"    # [Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    .prologue
    const/4 v1, 0x0

    .line 193
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    array-length v2, p2

    if-nez v2, :cond_9

    .line 198
    :cond_8
    :goto_8
    return v1

    .line 196
    :cond_9
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 198
    .local v0, "arraylistType":Ljava/util/List;, "Ljava/util/List<Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;>;"
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_8
.end method

.method public IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;[Ljava/lang/String;)Z
    .registers 6
    .param p1, "list"    # Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    .param p2, "types"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 202
    if-eqz p2, :cond_6

    array-length v2, p2

    if-nez v2, :cond_7

    .line 211
    :cond_6
    :goto_6
    return v1

    .line 206
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p2

    if-ge v0, v2, :cond_6

    .line 207
    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 208
    const/4 v1, 0x1

    goto :goto_6

    .line 206
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public IsRoutingOffHost(II)Z
    .registers 5
    .param p1, "screenState"    # I
    .param p2, "appCount"    # I

    .prologue
    .line 123
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->SCREENSTATE_CONFIG_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {p0, v0, p2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsRoutingOffHost(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;I)Z

    move-result v0

    return v0
.end method

.method public IsRoutingOffHost(ILcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;I)Z
    .registers 10
    .param p1, "defaultPath"    # I
    .param p2, "screenState"    # Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    .param p3, "appCount"    # I

    .prologue
    .line 136
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    invoke-virtual {v2}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "config":Ljava/lang/String;
    const-string v2, "uicc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_54

    const-string v2, "ese"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_54

    .line 138
    const-string v2, "config"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getOffHostValue()I

    move-result v2

    if-eq p1, v2, :cond_54

    .line 139
    :cond_2a
    const-string v2, "_uicc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_3a

    const-string v2, "_ese"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3c

    .line 140
    :cond_3a
    if-eqz p3, :cond_54

    .line 137
    :cond_3c
    const/4 v1, 0x0

    .line 141
    .local v1, "routingOffHost":Z
    :goto_3d
    sget-boolean v2, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->DBG:Z

    const-string v3, "LCardEmulationConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IsRoutingOffHost : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 142
    return v1

    .line 137
    .end local v1    # "routingOffHost":Z
    :cond_54
    const/4 v1, 0x1

    goto :goto_3d
.end method

.method public IsRoutingOffHost(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;I)Z
    .registers 9
    .param p1, "screenState"    # Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    .param p2, "appCount"    # I

    .prologue
    .line 127
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    invoke-virtual {v2}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "config":Ljava/lang/String;
    const-string v2, "uicc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_46

    const-string v2, "ese"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_46

    .line 129
    const-string v2, "_uicc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2c

    const-string v2, "_ese"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2e

    .line 130
    :cond_2c
    if-eqz p2, :cond_46

    .line 128
    :cond_2e
    const/4 v1, 0x0

    .line 131
    .local v1, "routingOffHost":Z
    :goto_2f
    sget-boolean v2, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->DBG:Z

    const-string v3, "LCardEmulationConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IsRoutingOffHost : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 132
    return v1

    .line 128
    .end local v1    # "routingOffHost":Z
    :cond_46
    const/4 v1, 0x1

    goto :goto_2f
.end method

.method public getHCERoutePath(Z)I
    .registers 7
    .param p1, "defaultPath"    # Z

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    sget-object v4, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_unlocked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    invoke-virtual {v2}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "config":Ljava/lang/String;
    const-string v2, "config"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "uicc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "ese"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_35

    move v1, v3

    .line 116
    .local v1, "isOffHost":Z
    :goto_28
    if-eqz v1, :cond_2c

    if-nez p1, :cond_30

    :cond_2c
    if-nez v1, :cond_37

    if-nez p1, :cond_37

    .line 117
    :cond_30
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getOffHostValue()I

    move-result v2

    .line 119
    :goto_34
    return v2

    .line 114
    .end local v1    # "isOffHost":Z
    :cond_35
    const/4 v1, 0x1

    goto :goto_28

    .restart local v1    # "isOffHost":Z
    :cond_37
    move v2, v3

    .line 119
    goto :goto_34
.end method

.method public getOffHostValue()I
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mSecureElement:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v0, v1, :cond_9

    .line 109
    const/16 v0, 0xf3

    .line 108
    :goto_8
    return v0

    .line 110
    :cond_9
    const/16 v0, 0xf4

    goto :goto_8
.end method

.method public getPowerState(II)Lcom/android/nfc/cardemulation/LCardEmulationConfig$RoutePowerState;
    .registers 12
    .param p1, "defaultPath"    # I
    .param p2, "appCount"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x0

    .line 88
    new-instance v1, Lcom/android/nfc/cardemulation/LCardEmulationConfig$RoutePowerState;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/LCardEmulationConfig$RoutePowerState;-><init>(Lcom/android/nfc/cardemulation/LCardEmulationConfig;)V

    .line 90
    .local v1, "state":Lcom/android/nfc/cardemulation/LCardEmulationConfig$RoutePowerState;
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getOffHostValue()I

    move-result v2

    iput v2, v1, Lcom/android/nfc/cardemulation/LCardEmulationConfig$RoutePowerState;->mOffHostRoute:I

    .line 91
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->values()[Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_13
    if-lt v4, v6, :cond_1e

    .line 100
    const/16 v2, 0x8

    iput v2, v1, Lcom/android/nfc/cardemulation/LCardEmulationConfig$RoutePowerState;->mProtocolMask:I

    .line 101
    iput v8, v1, Lcom/android/nfc/cardemulation/LCardEmulationConfig$RoutePowerState;->mTechOffHostMask:I

    .line 102
    iput v8, v1, Lcom/android/nfc/cardemulation/LCardEmulationConfig$RoutePowerState;->mTechOnHostMask:I

    .line 104
    return-object v1

    .line 91
    :cond_1e
    aget-object v0, v5, v4

    .line 92
    .local v0, "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->INITVALUE:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {v0, v2}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 91
    :goto_28
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_13

    .line 96
    :cond_2c
    iget v7, v1, Lcom/android/nfc/cardemulation/LCardEmulationConfig$RoutePowerState;->mOffhostroutePowerState:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsRoutingOffHost(ILcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;I)Z

    move-result v2

    if-eqz v2, :cond_50

    sget-object v2, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->ROUTING_LIST_MAP:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_40
    or-int/2addr v2, v7

    iput v2, v1, Lcom/android/nfc/cardemulation/LCardEmulationConfig$RoutePowerState;->mOffhostroutePowerState:I

    .line 97
    iget v7, v1, Lcom/android/nfc/cardemulation/LCardEmulationConfig$RoutePowerState;->mOnhostroutePowerState:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsRoutingOffHost(ILcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;I)Z

    move-result v2

    if-eqz v2, :cond_52

    move v2, v3

    :goto_4c
    or-int/2addr v2, v7

    iput v2, v1, Lcom/android/nfc/cardemulation/LCardEmulationConfig$RoutePowerState;->mOnhostroutePowerState:I

    goto :goto_28

    :cond_50
    move v2, v3

    .line 96
    goto :goto_40

    .line 97
    :cond_52
    sget-object v2, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->ROUTING_LIST_MAP:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4c
.end method

.method public getRouteAidsPowerState()I
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 154
    iget v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mRouteAidPowerState:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_9

    .line 155
    iget v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mRouteAidPowerState:I

    .line 172
    :goto_8
    return v4

    .line 157
    :cond_9
    iput v5, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mRouteAidPowerState:I

    .line 158
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->values()[Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_11
    if-lt v6, v8, :cond_16

    .line 172
    iget v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mRouteAidPowerState:I

    goto :goto_8

    .line 158
    :cond_16
    aget-object v3, v7, v6

    .line 159
    .local v3, "state":Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mConfig:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;

    .line 160
    .local v0, "list":Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;
    sget-boolean v4, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->DBG:Z

    const-string v9, "LCardEmulationConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "state : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", value : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 161
    if-nez v0, :cond_46

    .line 158
    :cond_42
    :goto_42
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_11

    .line 165
    :cond_46
    invoke-virtual {v0}, Lcom/lge/nfcconfig/NfcConfigure$HCEScenarioList;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "list_str":Ljava/lang/String;
    const-string v4, "config"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5a

    const-string v4, "host"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_42

    .line 167
    :cond_5a
    sget-boolean v4, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->DBG:Z

    const-string v9, "LCardEmulationConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Add route list : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v4, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->ROUTING_LIST_MAP:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 169
    .local v2, "routestate":Ljava/lang/Integer;
    iget v9, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mRouteAidPowerState:I

    if-eqz v2, :cond_84

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_80
    or-int/2addr v4, v9

    iput v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->mRouteAidPowerState:I

    goto :goto_42

    :cond_84
    move v4, v5

    goto :goto_80
.end method
