.class Lcom/android/nfc/cardemulation/LOtherCategoryManager;
.super Ljava/lang/Object;
.source "LOtherCategoryManager.java"


# static fields
.field private static INSTANCE:Lcom/android/nfc/cardemulation/LOtherCategoryManager; = null

.field private static final OTHER_CATEGORY_XML_FILE:Ljava/lang/String; = "other_category_list.xml"

.field private static final TAG:Ljava/lang/String; = "LOtherCategoryManager"

.field private static final XML_INDENT_OUTPUT_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"


# instance fields
.field final mDisableAppCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUserId:I

.field final mUserServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field final mXmlFile:Landroid/util/AtomicFile;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mDisableAppCounts:Ljava/util/HashMap;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 52
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "other_category_list.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mXmlFile:Landroid/util/AtomicFile;

    .line 53
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->loadXml()V

    .line 55
    return-void
.end method

.method private getDisableAppCount(I)I
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 146
    :cond_d
    :goto_d
    return v1

    .line 145
    :cond_e
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 146
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_d
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/nfc/cardemulation/LOtherCategoryManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 315
    sget-object v0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->INSTANCE:Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    if-nez v0, :cond_d

    if-eqz p0, :cond_d

    .line 316
    new-instance v0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->INSTANCE:Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    .line 319
    :cond_d
    sget-object v0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->INSTANCE:Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    return-object v0
.end method

.method private loadXml()V
    .registers 15

    .prologue
    .line 235
    const/4 v4, 0x0

    .line 237
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v11, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1a

    .line 238
    const-string v11, "LOtherCategoryManager"

    const-string v12, "Xml file does not exist."

    invoke-static {v11, v12}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_a3
    .catchall {:try_start_1 .. :try_end_14} :catchall_f7

    .line 305
    if-eqz v4, :cond_19

    .line 307
    :try_start_16
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_fe

    .line 312
    :cond_19
    :goto_19
    return-void

    .line 241
    :cond_1a
    :try_start_1a
    iget-object v11, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    .line 242
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 243
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v7, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 244
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 245
    .local v3, "eventType":I
    :goto_2c
    const/4 v11, 0x2

    if-eq v3, v11, :cond_32

    .line 246
    const/4 v11, 0x1

    if-ne v3, v11, :cond_52

    .line 250
    :cond_32
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 251
    .local v9, "tagName":Ljava/lang/String;
    const-string v11, "services"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4a

    .line 252
    iget-object v11, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 254
    const/4 v10, -0x1

    .line 255
    .local v10, "userId":I
    const-string v5, ""
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_46} :catch_a3
    .catchall {:try_start_1a .. :try_end_46} :catchall_f7

    .line 256
    .local v5, "idString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 258
    .local v8, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_47
    :goto_47
    const/4 v11, 0x1

    if-ne v3, v11, :cond_57

    .line 305
    .end local v5    # "idString":Ljava/lang/String;
    .end local v8    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v10    # "userId":I
    :cond_4a
    if-eqz v4, :cond_19

    .line 307
    :try_start_4c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_19

    :catch_50
    move-exception v11

    goto :goto_19

    .line 248
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_52
    :try_start_52
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_2c

    .line 259
    .restart local v5    # "idString":Ljava/lang/String;
    .restart local v8    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v9    # "tagName":Ljava/lang/String;
    .restart local v10    # "userId":I
    :cond_57
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 260
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 262
    const/4 v11, 0x2

    if-ne v3, v11, :cond_7b

    const-string v11, "user"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_67} :catch_a3
    .catchall {:try_start_52 .. :try_end_67} :catchall_f7

    move-result v11

    if-eqz v11, :cond_7b

    .line 264
    const/4 v11, 0x0

    :try_start_6b
    const-string v12, "ID"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_6b .. :try_end_74} :catch_103
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_74} :catch_a3
    .catchall {:try_start_6b .. :try_end_74} :catchall_f7

    move-result v10

    .line 273
    :try_start_75
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .restart local v8    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    goto :goto_47

    :cond_7b
    const/4 v11, 0x2

    if-ne v3, v11, :cond_cb

    const-string v11, "DisableList"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_cb

    .line 275
    if-ltz v10, :cond_47

    if-eqz v8, :cond_47

    .line 280
    const/4 v11, 0x0

    const-string v12, "PackageName"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "packageName":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "ClassName"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_47

    .line 285
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_a2} :catch_a3
    .catchall {:try_start_75 .. :try_end_a2} :catchall_f7

    goto :goto_47

    .line 301
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v3    # "eventType":I
    .end local v5    # "idString":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "userId":I
    :catch_a3
    move-exception v2

    .line 302
    .local v2, "e":Ljava/lang/Exception;
    :try_start_a4
    const-string v11, "LOtherCategoryManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "XmlFile file, trashing. - "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v11, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->delete()V
    :try_end_c1
    .catchall {:try_start_a4 .. :try_end_c1} :catchall_f7

    .line 305
    if-eqz v4, :cond_19

    .line 307
    :try_start_c3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_c8

    goto/16 :goto_19

    .line 308
    :catch_c8
    move-exception v11

    goto/16 :goto_19

    .line 287
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "eventType":I
    .restart local v5    # "idString":Ljava/lang/String;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v9    # "tagName":Ljava/lang/String;
    .restart local v10    # "userId":I
    :cond_cb
    const/4 v11, 0x3

    if-ne v3, v11, :cond_ed

    :try_start_ce
    const-string v11, "user"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ed

    .line 288
    if-ltz v10, :cond_47

    if-eqz v8, :cond_47

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_47

    .line 293
    iget-object v11, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const/4 v10, -0x1

    .line 295
    const/4 v8, 0x0

    .line 296
    goto/16 :goto_47

    :cond_ed
    const/4 v11, 0x3

    if-ne v3, v11, :cond_47

    const-string v11, "DisableList"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_f5} :catch_a3
    .catchall {:try_start_ce .. :try_end_f5} :catchall_f7

    goto/16 :goto_47

    .line 304
    .end local v3    # "eventType":I
    .end local v5    # "idString":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "userId":I
    :catchall_f7
    move-exception v11

    .line 305
    if-eqz v4, :cond_fd

    .line 307
    :try_start_fa
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_101

    .line 311
    :cond_fd
    :goto_fd
    throw v11

    :catch_fe
    move-exception v11

    goto/16 :goto_19

    :catch_101
    move-exception v12

    goto :goto_fd

    .line 271
    .restart local v3    # "eventType":I
    .restart local v5    # "idString":Ljava/lang/String;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v9    # "tagName":Ljava/lang/String;
    .restart local v10    # "userId":I
    :catch_103
    move-exception v11

    goto/16 :goto_47
.end method

.method private saveToXml()Z
    .registers 2

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->toXml()Z

    move-result v0

    return v0
.end method

.method private toXml()Z
    .registers 13

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 199
    .local v3, "ret":Z
    :try_start_2
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 200
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 201
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v2, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 202
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 203
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 204
    const/4 v7, 0x0

    const-string v8, "services"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_3f

    .line 206
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_39
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4f

    .line 220
    :cond_3f
    const/4 v7, 0x0

    const-string v8, "services"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 222
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 223
    const/4 v3, 0x1

    .line 231
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_4e
    return v3

    .line 206
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_4f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 207
    .local v6, "userService":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ComponentName;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, "userId":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 209
    .local v4, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v7, 0x0

    const-string v9, "user"

    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    const/4 v7, 0x0

    const-string v9, "ID"

    invoke-interface {v2, v7, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_75
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_93

    .line 217
    const/4 v7, 0x0

    const-string v9, "user"

    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_81} :catch_82

    goto :goto_39

    .line 225
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v5    # "userId":Ljava/lang/String;
    .end local v6    # "userService":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ComponentName;>;>;"
    :catch_82
    move-exception v7

    const-string v7, "LOtherCategoryManager"

    const-string v8, "Error writing Other Category list"

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    if-eqz v1, :cond_91

    .line 227
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 229
    :cond_91
    const/4 v3, 0x0

    goto :goto_4e

    .line 211
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4    # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v5    # "userId":Ljava/lang/String;
    .restart local v6    # "userService":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ComponentName;>;>;"
    :cond_93
    :try_start_93
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 212
    .local v0, "component":Landroid/content/ComponentName;
    const/4 v9, 0x0

    const-string v10, "DisableList"

    invoke-interface {v2, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    const/4 v9, 0x0

    const-string v10, "PackageName"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    const/4 v9, 0x0

    const-string v10, "ClassName"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    const/4 v9, 0x0

    const-string v10, "DisableList"

    invoke-interface {v2, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_b9} :catch_82

    goto :goto_75
.end method


# virtual methods
.method addDisableComponentList(ILandroid/content/ComponentName;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 58
    iput p1, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mLastUserId:I

    .line 61
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 62
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 68
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :goto_1a
    if-nez v0, :cond_2d

    .line 69
    const/4 v1, 0x0

    .line 77
    :goto_1d
    return v1

    .line 64
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 72
    :cond_2d
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 73
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_36
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->saveToXml()Z

    .line 77
    const/4 v1, 0x1

    goto :goto_1d
.end method

.method isAllAppEnable(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mLastUserId:I

    .line 119
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->getDisableAppCount(I)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isChangeDisableAppCount(I)Z
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 123
    const/16 v4, -0x2710

    if-ne p1, v4, :cond_6

    .line 124
    iget p1, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mLastUserId:I

    .line 126
    :cond_6
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mDisableAppCounts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 127
    .local v3, "previousAppCountObject":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 128
    .local v2, "previousAppCount":I
    if-eqz v3, :cond_19

    .line 129
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 132
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->getDisableAppCount(I)I

    move-result v0

    .line 133
    .local v0, "appCount":I
    const-string v4, "LOtherCategoryManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "### disable App count :: previousAppCount :: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v4, "LOtherCategoryManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "### disable App count :: appCount :: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    if-eq v2, v0, :cond_56

    const/4 v1, 0x1

    .line 136
    .local v1, "isChanged":Z
    :goto_48
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mDisableAppCounts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return v1

    .line 135
    .end local v1    # "isChanged":Z
    :cond_56
    const/4 v1, 0x0

    goto :goto_48
.end method

.method isDisable(ILandroid/content/ComponentName;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 101
    iput p1, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mLastUserId:I

    .line 103
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 114
    :cond_f
    :goto_f
    return v1

    .line 107
    :cond_10
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 108
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_f

    .line 111
    const-string v1, "LOtherCategoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "##### componet :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "LOtherCategoryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "##### list.contains(component) :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_f
.end method

.method removeDisableComponentList(ILandroid/content/ComponentName;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x1

    .line 81
    iput p1, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mLastUserId:I

    .line 83
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 97
    :goto_f
    return v3

    .line 87
    :cond_10
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 89
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 90
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    :cond_25
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 94
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_34
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->saveToXml()Z

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 324
    iget-object v3, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 325
    :cond_c
    const-string v3, "UserServices is empty!"

    .line 342
    :goto_e
    return-object v3

    .line 328
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "OtherCategoryManager : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 329
    :cond_2b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 330
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ComponentName;>;>;"
    const-string v3, "{UserID : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 334
    .local v1, "component":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6d

    .line 335
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :goto_67
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 337
    :cond_6d
    const-string v3, "Empty!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67
.end method

.method update(ILjava/util/ArrayList;)V
    .registers 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const/4 v3, 0x0

    .line 153
    .local v3, "isUpdate":Z
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2b

    :cond_9
    iget-object v6, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 154
    iget-object v6, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v6, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mDisableAppCounts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->saveToXml()Z

    .line 184
    :cond_2a
    :goto_2a
    return-void

    .line 160
    :cond_2b
    iget-object v6, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mUserServices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 161
    .local v4, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_2a

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v2, "installComponentLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 168
    .local v5, "previousComponentLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_75

    .line 172
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_58
    :goto_58
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_83

    .line 179
    iget-object v6, p0, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->mDisableAppCounts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    if-eqz v3, :cond_2a

    .line 182
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->saveToXml()Z

    goto :goto_2a

    .line 168
    :cond_75
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 169
    .local v1, "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 172
    .end local v1    # "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_83
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 173
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_58

    .line 174
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 175
    const/4 v3, 0x1

    goto :goto_58
.end method
