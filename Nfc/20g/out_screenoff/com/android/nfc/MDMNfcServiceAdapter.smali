.class public Lcom/android/nfc/MDMNfcServiceAdapter;
.super Ljava/lang/Object;
.source "MDMNfcServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;
    }
.end annotation


# static fields
.field private static final LGE_FRAMEWORK_RESOURCE_STRING_CLASS_NAME:Ljava/lang/String; = "com.lge.internal.R$string"

.field public static final MSG_NFC_CARDONLY:I = 0xb

.field public static final MSG_NFC_DISALLOW:I = 0xa

.field public static final MSG_NFC_P2P_DISALLOW:I = 0xc

.field private static TAG:Ljava/lang/String;

.field private static mHandler:Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;

.field private static mInstance:Lcom/android/nfc/MDMNfcServiceAdapter;

.field private static mLgeFrameworkString:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string v0, "MDMNfcServiceAdapter"

    sput-object v0, Lcom/android/nfc/MDMNfcServiceAdapter;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    :try_start_3
    const-string v1, "com.lge.internal.R$string"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/nfc/MDMNfcServiceAdapter;->mLgeFrameworkString:Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_b} :catch_19

    .line 41
    :goto_b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/nfc/MDMNfcServiceAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/MDMNfcServiceAdapter$1;-><init>(Lcom/android/nfc/MDMNfcServiceAdapter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    return-void

    .line 37
    .end local v0    # "t":Ljava/lang/Thread;
    :catch_19
    move-exception v1

    const-string v1, "MDM"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/nfc/MDMNfcServiceAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": ClassNotFoundException - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.lge.internal.R$string"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v1, 0x0

    sput-object v1, Lcom/android/nfc/MDMNfcServiceAdapter;->mLgeFrameworkString:Ljava/lang/Class;

    goto :goto_b
.end method

.method static synthetic access$0()Ljava/lang/Class;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/nfc/MDMNfcServiceAdapter;->mLgeFrameworkString:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/Class;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 161
    invoke-static {p0, p1}, Lcom/android/nfc/MDMNfcServiceAdapter;->getField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/nfc/MDMNfcServiceAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;)V
    .registers 1

    .prologue
    .line 23
    sput-object p0, Lcom/android/nfc/MDMNfcServiceAdapter;->mHandler:Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;

    return-void
.end method

.method private checkAndroidBeamDisallowed(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowAndroidBeam(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 123
    const-string v0, "MDM"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/nfc/MDMNfcServiceAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": checkAndroidBeamDisallowed, disallow P2P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/android/nfc/MDMNfcServiceAdapter;->sendMDMMessage(ILjava/lang/Object;)V

    .line 125
    const/4 v0, 0x1

    .line 128
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private checkNfcCardModeOnly(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowNfc(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2d

    .line 113
    const-string v0, "MDM"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/nfc/MDMNfcServiceAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": checkNfcCardModeOnly, policy is card only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/android/nfc/MDMNfcServiceAdapter;->sendMDMMessage(ILjava/lang/Object;)V

    .line 115
    const/4 v0, 0x1

    .line 118
    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method private checkNfcDisallowed(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowNfc(Landroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_2c

    .line 103
    const-string v0, "MDM"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/nfc/MDMNfcServiceAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": checkNfcAllowed, disallow nfc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/nfc/MDMNfcServiceAdapter;->sendMDMMessage(ILjava/lang/Object;)V

    .line 105
    const/4 v0, 0x1

    .line 108
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private static checkflag(II)Z
    .registers 3
    .param p0, "nfcstatus"    # I
    .param p1, "flag"    # I

    .prologue
    .line 158
    and-int v0, p0, p1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)I
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "classObject":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 163
    :cond_4
    const/4 v1, -0x1

    .line 173
    :goto_5
    return v1

    .line 167
    :cond_6
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 168
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_10

    move-result v1

    .local v1, "ret":I
    goto :goto_5

    .line 170
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "ret":I
    :catch_10
    move-exception v2

    const-string v2, "MDM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getField - name : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v1, -0x1

    .restart local v1    # "ret":I
    goto :goto_5
.end method

.method public static getInstance()Lcom/android/nfc/MDMNfcServiceAdapter;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/nfc/MDMNfcServiceAdapter;->mInstance:Lcom/android/nfc/MDMNfcServiceAdapter;

    if-nez v0, :cond_b

    .line 96
    new-instance v0, Lcom/android/nfc/MDMNfcServiceAdapter;

    invoke-direct {v0}, Lcom/android/nfc/MDMNfcServiceAdapter;-><init>()V

    sput-object v0, Lcom/android/nfc/MDMNfcServiceAdapter;->mInstance:Lcom/android/nfc/MDMNfcServiceAdapter;

    .line 98
    :cond_b
    sget-object v0, Lcom/android/nfc/MDMNfcServiceAdapter;->mInstance:Lcom/android/nfc/MDMNfcServiceAdapter;

    return-object v0
.end method

.method public static isNfcAllowed(Landroid/content/Context;I)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nfcstatus"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-static {}, Lcom/android/nfc/MDMNfcServiceAdapter;->getInstance()Lcom/android/nfc/MDMNfcServiceAdapter;

    move-result-object v0

    .line 138
    .local v0, "adapter":Lcom/android/nfc/MDMNfcServiceAdapter;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/nfc/MDMNfcServiceAdapter;->isCAPPMDMFlag()Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    move v1, v2

    .line 154
    :cond_11
    :goto_11
    return v1

    .line 142
    :cond_12
    invoke-direct {v0, p0}, Lcom/android/nfc/MDMNfcServiceAdapter;->checkNfcDisallowed(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 146
    invoke-direct {v0, p0}, Lcom/android/nfc/MDMNfcServiceAdapter;->checkNfcCardModeOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 147
    const/4 v3, 0x4

    invoke-static {p1, v3}, Lcom/android/nfc/MDMNfcServiceAdapter;->checkflag(II)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-static {p1, v4}, Lcom/android/nfc/MDMNfcServiceAdapter;->checkflag(II)Z

    move-result v3

    if-nez v3, :cond_11

    move v1, v2

    goto :goto_11

    .line 150
    :cond_2d
    invoke-static {p1, v4}, Lcom/android/nfc/MDMNfcServiceAdapter;->checkflag(II)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-direct {v0, p0}, Lcom/android/nfc/MDMNfcServiceAdapter;->checkAndroidBeamDisallowed(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_39
    move v1, v2

    .line 154
    goto :goto_11
.end method

.method private sendMDMMessage(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 88
    sget-object v1, Lcom/android/nfc/MDMNfcServiceAdapter;->mHandler:Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 89
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 90
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/android/nfc/MDMNfcServiceAdapter;->mHandler:Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    return-void
.end method


# virtual methods
.method public isCAPPMDMFlag()Z
    .registers 2

    .prologue
    .line 132
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    return v0
.end method
