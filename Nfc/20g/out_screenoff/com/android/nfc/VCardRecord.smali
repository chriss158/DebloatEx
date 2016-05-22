.class public Lcom/android/nfc/VCardRecord;
.super Ljava/lang/Object;
.source "VCardRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCardRecord"


# instance fields
.field private final mVCard:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .param p1, "content"    # [B

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/nfc/VCardRecord;->mVCard:[B

    .line 50
    return-void
.end method

.method private getVCardEntries()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 188
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 191
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    new-instance v0, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v0, v5}, Lcom/android/vcard/VCardEntryConstructor;-><init>(I)V

    .line 192
    .local v0, "constructor":Lcom/android/vcard/VCardEntryConstructor;
    new-instance v3, Lcom/android/nfc/VCardRecord$1;

    invoke-direct {v3, p0, v1}, Lcom/android/nfc/VCardRecord$1;-><init>(Lcom/android/nfc/VCardRecord;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 204
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2, v5}, Lcom/android/vcard/VCardParser_V21;-><init>(I)V

    .line 206
    .local v2, "parser":Lcom/android/vcard/VCardParser;
    :try_start_17
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/android/nfc/VCardRecord;->mVCard:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_21
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_17 .. :try_end_21} :catch_22

    .line 215
    :goto_21
    return-object v1

    .line 209
    :catch_22
    move-exception v3

    new-instance v2, Lcom/android/vcard/VCardParser_V30;

    .end local v2    # "parser":Lcom/android/vcard/VCardParser;
    invoke-direct {v2, v5}, Lcom/android/vcard/VCardParser_V30;-><init>(I)V

    .line 210
    .restart local v2    # "parser":Lcom/android/vcard/VCardParser;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/android/nfc/VCardRecord;->mVCard:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V

    goto :goto_21
.end method


# virtual methods
.method public getBirthday()Ljava/lang/String;
    .registers 6

    .prologue
    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/VCardRecord;->getVCardEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 80
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 81
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getBirthday()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v2

    .line 86
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    :goto_15
    return-object v2

    .line 83
    :catch_16
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VCardRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : e= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 54
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/VCardRecord;->getVCardEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 55
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 56
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v2

    .line 62
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    :goto_15
    return-object v2

    .line 58
    :catch_16
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VCardRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : e= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    const-string v2, "vCard"

    goto :goto_15
.end method

.method public getEmailList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/VCardRecord;->getVCardEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 117
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 118
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v2

    .line 123
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    :goto_15
    return-object v2

    .line 120
    :catch_16
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VCardRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : e= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public getImList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/VCardRecord;->getVCardEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 153
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 154
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getImList()Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v2

    .line 159
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    :goto_15
    return-object v2

    .line 156
    :catch_16
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VCardRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : e= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public getNickNameList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NicknameData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/VCardRecord;->getVCardEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 68
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 69
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getNickNameList()Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v2

    .line 74
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    :goto_15
    return-object v2

    .line 71
    :catch_16
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VCardRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : e= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public getNotes()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NoteData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/VCardRecord;->getVCardEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 92
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 93
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getNotes()Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v2

    .line 98
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    :goto_15
    return-object v2

    .line 95
    :catch_16
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VCardRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : e= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public getOrganizationList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/VCardRecord;->getVCardEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 141
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 142
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getOrganizationList()Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v2

    .line 147
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    :goto_15
    return-object v2

    .line 144
    :catch_16
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VCardRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : e= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public getPhoneList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/VCardRecord;->getVCardEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 105
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 106
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v2

    .line 111
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    :goto_15
    return-object v2

    .line 108
    :catch_16
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VCardRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : e= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public getPhotoList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/VCardRecord;->getVCardEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 165
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 166
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getPhotoList()Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v2

    .line 171
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    :goto_15
    return-object v2

    .line 168
    :catch_16
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VCardRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : e= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public getPostalList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/VCardRecord;->getVCardEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 129
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 130
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v2

    .line 135
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    :goto_15
    return-object v2

    .line 132
    :catch_16
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VCardRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : e= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public getWebsiteList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$WebsiteData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/VCardRecord;->getVCardEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 177
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 178
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry;

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v2

    .line 183
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    :goto_15
    return-object v2

    .line 180
    :catch_16
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VCardRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : e= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_15
.end method
