.class public final Lsdk/b/a/a/a/b;
.super Lsdk/b/a/a/a/a;


# static fields
.field public static c:J

.field public static d:J

.field public static e:I

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Landroid/content/ContentValues;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Lsdk/a/a/a/a/a/h;

.field private static o:Ljava/lang/String;


# instance fields
.field private n:Lsdk/b/a/a/e/d/f;

.field private p:Lsdk/b/a/a/e/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    sput-wide v1, Lsdk/b/a/a/a/b;->c:J

    sput-wide v1, Lsdk/b/a/a/a/b;->d:J

    sput-object v0, Lsdk/b/a/a/a/b;->f:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/a/b;->g:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/a/b;->i:Landroid/content/ContentValues;

    sput-object v0, Lsdk/b/a/a/a/b;->j:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/a/b;->k:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/a/b;->l:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/a/b;->m:Lsdk/a/a/a/a/a/h;

    sput-object v0, Lsdk/b/a/a/a/b;->o:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lsdk/b/a/a/a/b;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/igexin/sdk/SdkMainService;)V
    .locals 1

    invoke-direct {p0, p1}, Lsdk/b/a/a/a/a;-><init>(Lcom/igexin/sdk/SdkMainService;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsdk/b/a/a/a/b;->n:Lsdk/b/a/a/e/d/f;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lsdk/b/a/a/a/b;->a(Ljava/io/File;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lsdk/b/a/a/b/o;)Z
    .locals 15

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    const/4 v1, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lsdk/b/a/a/b/o;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :try_start_0
    const-string v2, "appid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lsdk/b/a/a/a/b;->k:Ljava/lang/String;

    const-string v2, "messageid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lsdk/b/a/a/a/b;->j:Ljava/lang/String;

    const-string v2, "taskid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    const-string v2, "appkey"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    sget-object v2, Lsdk/b/a/a/a/b;->k:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lsdk/b/a/a/b/o;->a(Ljava/lang/String;)V

    sget-object v2, Lsdk/b/a/a/a/b;->j:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lsdk/b/a/a/b/o;->c(Ljava/lang/String;)V

    sget-object v2, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lsdk/b/a/a/b/o;->d(Ljava/lang/String;)V

    sget-object v2, Lsdk/b/a/a/a/b;->f:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lsdk/b/a/a/b/o;->b(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lsdk/b/a/a/b/o;->f(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "action_chains"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v4, v1

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v10, :cond_8

    :try_start_2
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v3, "popupweb"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "popup"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/sdk/SdkMainService;->e()Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    :goto_3
    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v1

    goto :goto_1

    :cond_2
    :try_start_3
    const-string v3, "dial"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lsdk/b/a/a/c/d;->s:Z

    if-nez v3, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const-string v3, "smsinbox"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "smsinbox2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "mmsinbox2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    sget-boolean v3, Lsdk/b/a/a/c/d;->q:Z

    if-eqz v3, :cond_5

    sget-boolean v3, Lsdk/b/a/a/c/d;->r:Z

    if-nez v3, :cond_6

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    const-string v3, "appdownload"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "popupweb"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "reportbindapp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "reportaddphoneinfo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "reportapplist"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "reportapp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "enablelog"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "disablelog"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "uploadlog"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "terminatetask"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "dial"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "smsinbox2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "mmsinbox2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "notification"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "popup"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "startapp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "startweb"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "smsinbox"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "checkapp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "goto"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "startsms"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "\"null\""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_2

    :cond_8
    const/4 v1, 0x0

    move v8, v1

    :goto_4
    if-ge v8, v10, :cond_55

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_58

    const-string v3, "notification"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v3, Lsdk/b/a/a/b/l;

    invoke-direct {v3}, Lsdk/b/a/a/b/l;-><init>()V

    const-string v2, "3"

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->j(Ljava/lang/String;)V

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/l;

    move-object v2, v0

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/l;->a(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/l;

    move-object v2, v0

    invoke-virtual {v2, v11}, Lsdk/b/a/a/b/l;->b(Ljava/lang/String;)V

    const-string v2, "logo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "logo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, ".png"

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_9

    const-string v2, "logo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, ".jpeg"

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_11

    :cond_9
    const-string v2, "logo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, ".png"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_a

    const-string v2, "logo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, ".jpeg"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :cond_a
    const-string v7, "logo"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lsdk/b/a/a/c/d;->G:Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/l;

    move-object v2, v0

    sget-object v7, Lsdk/b/a/a/c/d;->G:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/l;->c(Ljava/lang/String;)V

    :cond_b
    :goto_5
    const-string v2, "logo_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "logo_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "http"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/l;

    move-object v2, v0

    const-string v7, "logo_url"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/l;->d(Ljava/lang/String;)V

    const-string v2, "DefaultNotifyAction"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "getDownloadImgCache notification logo_url = "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "logo_url"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v2

    const-string v7, "logo_url"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/igexin/sdk/SdkMainService;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Lsdk/b/a/a/e/b/c/b;

    const-string v7, "logo_url"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "actionid"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "xx:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-direct {v2, v7, v11, v12, v13}, Lsdk/b/a/a/e/b/c/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v7, Lsdk/b/a/a/e/b/d;

    invoke-direct {v7, v2}, Lsdk/b/a/a/e/b/d;-><init>(Lsdk/b/a/a/e/b/c;)V

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v2, v7, v11, v12}, Lsdk/c/a/b/d;->a(Lsdk/c/a/e/d;ZZ)Z

    :cond_c
    :goto_6
    const-string v2, "banner_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "banner_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "http"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/l;

    move-object v2, v0

    const-string v7, "banner_url"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/l;->e(Ljava/lang/String;)V

    const-string v2, "DefaultNotifyAction"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "getDownloadImgCache notification logo_url = "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "logo_url"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v2

    const-string v7, "banner_url"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/igexin/sdk/SdkMainService;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Lsdk/b/a/a/e/b/c/b;

    const-string v7, "banner_url"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "actionid"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "xx:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    invoke-direct {v2, v7, v11, v12, v13}, Lsdk/b/a/a/e/b/c/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v7, Lsdk/b/a/a/e/b/d;

    invoke-direct {v7, v2}, Lsdk/b/a/a/e/b/d;-><init>(Lsdk/b/a/a/e/b/c;)V

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v2, v7, v11, v12}, Lsdk/c/a/b/d;->a(Lsdk/c/a/e/d;ZZ)Z

    :cond_d
    :goto_7
    const-string v2, "is_noclear"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/l;

    move-object v2, v0

    const-string v7, "is_noclear"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/l;->a(Z)V

    :cond_e
    const-string v2, "is_novibrate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/l;

    move-object v2, v0

    const-string v7, "is_novibrate"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/l;->b(Z)V

    :cond_f
    const-string v2, "is_noring"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/l;

    move-object v2, v0

    const-string v7, "is_noring"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/l;->c(Z)V

    :cond_10
    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->k(Ljava/lang/String;)V

    move v2, v5

    :goto_8
    const-string v5, "actionid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lsdk/b/a/a/b/d;->i(Ljava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    :goto_9
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v5, v1

    goto/16 :goto_4

    :cond_11
    const-string v2, "error"

    sput-object v2, Lsdk/b/a/a/c/d;->G:Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/l;

    move-object v2, v0

    const-string v7, "null"

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/l;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v1

    move-object v2, v1

    const/4 v1, 0x0

    const-string v3, "DefaultNotifyAction"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lsdk/b/a/a/b/o;->a(Ljava/util/List;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "------pase pushMessage json  end------- result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    goto/16 :goto_3

    :cond_12
    :try_start_4
    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/l;

    move-object v2, v0

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/l;->f(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_13
    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/l;

    move-object v2, v0

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/l;->g(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_14
    const-string v3, "popup"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v3, Lsdk/b/a/a/b/m;

    invoke-direct {v3}, Lsdk/b/a/a/b/m;-><init>()V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/m;

    move-object v2, v0

    const-string v7, "4"

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/m;->j(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/m;

    move-object v2, v0

    const-string v7, "title"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/m;->a(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/m;

    move-object v2, v0

    const-string v7, "text"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/m;->b(Ljava/lang/String;)V

    const-string v2, "img"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    const-string v2, "img"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "http://"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lsdk/b/a/a/b/o;->h()V

    :cond_15
    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/m;

    move-object v2, v0

    const-string v7, "img"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/m;->c(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/m;

    move-object v2, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ".png"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/m;->d(Ljava/lang/String;)V

    :cond_16
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "buttons"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_17

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v2, v12, :cond_17

    new-instance v12, Lsdk/b/a/a/b/e;

    invoke-direct {v12}, Lsdk/b/a/a/b/e;-><init>()V

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "text"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lsdk/b/a/a/b/e;->a(Ljava/lang/String;)V

    const-string v14, "do"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsdk/b/a/a/b/e;->b(Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/m;

    move-object v2, v0

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/m;->a(Ljava/util/List;)V

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->k(Ljava/lang/String;)V

    :cond_18
    move v2, v5

    goto/16 :goto_8

    :cond_19
    const-string v3, "startapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    new-instance v3, Lsdk/b/a/a/b/t;

    invoke-direct {v3}, Lsdk/b/a/a/b/t;-><init>()V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/t;

    move-object v2, v0

    const-string v7, "5"

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/t;->j(Ljava/lang/String;)V

    const-string v2, "appstartupid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "appstartupid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/t;

    move-object v2, v0

    const-string v11, "android"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/t;->a(Ljava/lang/String;)V

    :cond_1a
    const-string v2, "is_autostart"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/t;

    move-object v2, v0

    const-string v7, "is_autostart"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/t;->l(Ljava/lang/String;)V

    :cond_1b
    const-string v2, "appid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/t;

    move-object v2, v0

    const-string v7, "appid"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/t;->b(Ljava/lang/String;)V

    :cond_1c
    const-string v2, "noinstall_action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/t;

    move-object v2, v0

    const-string v7, "noinstall_action"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/t;->c(Ljava/lang/String;)V

    :cond_1d
    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/t;

    move-object v2, v0

    const-string v7, "do"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/t;->k(Ljava/lang/String;)V

    :cond_1e
    move v2, v5

    goto/16 :goto_8

    :cond_1f
    const-string v3, "startweb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    new-instance v3, Lsdk/b/a/a/b/v;

    invoke-direct {v3}, Lsdk/b/a/a/b/v;-><init>()V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/v;

    move-object v2, v0

    const-string v7, "6"

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/v;->j(Ljava/lang/String;)V

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "is_withcid"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    const-string v7, "is_withcid"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "true"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    const-string v7, "?"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_21

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "&cid="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lsdk/b/a/a/c/h;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_20
    :goto_c
    const-string v7, "is_withnettype"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_57

    const-string v7, "is_withnettype"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "true"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/igexin/sdk/SdkMainService;->o()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_57

    const-string v11, "?"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_22

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "&nettype="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    :goto_d
    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/v;

    move-object v2, v0

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/v;->a(Ljava/lang/String;)V

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->k(Ljava/lang/String;)V

    move v2, v5

    goto/16 :goto_8

    :cond_21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "?cid="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lsdk/b/a/a/c/h;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_22
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "?nettype="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_d

    :cond_23
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_24
    const-string v3, "smsinbox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    new-instance v3, Lsdk/b/a/a/b/r;

    invoke-direct {v3}, Lsdk/b/a/a/b/r;-><init>()V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/r;

    move-object v2, v0

    const-string v7, "7"

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/r;->j(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/r;

    move-object v2, v0

    const-string v7, "address"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/r;->a(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/r;

    move-object v2, v0

    const-string v7, "content"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/r;->b(Ljava/lang/String;)V

    const-string v2, "ct"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, ""

    const-string v7, "ct"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/r;

    move-object v2, v0

    const-string v7, "ct"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lsdk/b/a/a/b/r;->a(J)V

    :cond_25
    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/r;

    move-object v2, v0

    const-string v7, "flag"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/r;->c(Ljava/lang/String;)V

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->k(Ljava/lang/String;)V

    move v2, v5

    goto/16 :goto_8

    :cond_26
    const-string v3, "checkapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    new-instance v3, Lsdk/b/a/a/b/f;

    invoke-direct {v3}, Lsdk/b/a/a/b/f;-><init>()V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/f;

    move-object v2, v0

    const-string v7, "8"

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/f;->j(Ljava/lang/String;)V

    const-string v2, "appstartupid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_27

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/f;

    move-object v2, v0

    const-string v11, "android"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/f;->b(Ljava/lang/String;)V

    :cond_27
    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/f;

    move-object v2, v0

    const-string v7, "do_installed"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/f;->a(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/f;

    move-object v2, v0

    const-string v7, "do_uninstalled"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/f;->c(Ljava/lang/String;)V

    move v2, v5

    goto/16 :goto_8

    :cond_28
    const-string v3, "goto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    new-instance v3, Lsdk/b/a/a/b/i;

    invoke-direct {v3}, Lsdk/b/a/a/b/i;-><init>()V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/i;

    move-object v2, v0

    const-string v7, "10"

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/i;->j(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/i;

    move-object v2, v0

    const-string v7, "do"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/i;->k(Ljava/lang/String;)V

    move v2, v5

    goto/16 :goto_8

    :cond_29
    const-string v3, "appdownload"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    new-instance v3, Lsdk/b/a/a/b/a;

    invoke-direct {v3}, Lsdk/b/a/a/b/a;-><init>()V

    const-string v2, "11"

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->j(Ljava/lang/String;)V

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->k(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/a;

    move-object v2, v0

    const-string v7, "is_autoinstall"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/a;->f(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/a;

    move-object v2, v0

    const-string v7, "appstartupid"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/a;->e(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/a;

    move-object v2, v0

    const-string v7, "is_autostart"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/a;->l(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/a;

    move-object v2, v0

    const-string v7, "url"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/a;->c(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/a;

    move-object v2, v0

    const-string v7, "name"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/a;->b(Ljava/lang/String;)V

    const-string v2, "is_showprogress"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/a;

    move-object v2, v0

    const-string v7, "is_showprogress"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/a;->m(Ljava/lang/String;)V

    :cond_2a
    const-string v2, "logo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/a;

    move-object v2, v0

    const-string v7, "logo"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/a;->d(Ljava/lang/String;)V

    const-string v2, "logo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "http"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "DefaultNotifyAction"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "getDownloadImgCache appdownload logo = "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "logo"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v2

    const-string v7, "logo"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/igexin/sdk/SdkMainService;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance v2, Lsdk/b/a/a/e/b/c/b;

    const-string v7, "logo"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "actionid"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "xx:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v7, v11, v12}, Lsdk/b/a/a/e/b/c/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lsdk/b/a/a/e/b/d;

    invoke-direct {v7, v2}, Lsdk/b/a/a/e/b/d;-><init>(Lsdk/b/a/a/e/b/c;)V

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v2, v7, v11, v12}, Lsdk/c/a/b/d;->a(Lsdk/c/a/e/d;ZZ)Z

    :cond_2b
    :goto_e
    const-string v2, "appstartupid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/a;

    move-object v2, v0

    const-string v11, "android"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/a;->a(Ljava/lang/String;)V

    move v2, v5

    goto/16 :goto_8

    :cond_2c
    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/a;

    move-object v2, v0

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/a;->h(Ljava/lang/String;)V

    goto :goto_e

    :cond_2d
    const-string v3, "startsms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    new-instance v3, Lsdk/b/a/a/b/u;

    invoke-direct {v3}, Lsdk/b/a/a/b/u;-><init>()V

    const-string v2, "12"

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->j(Ljava/lang/String;)V

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->k(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/u;

    move-object v2, v0

    const-string v7, "address"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/u;->a(Ljava/lang/String;)V

    move v2, v5

    goto/16 :goto_8

    :cond_2e
    const-string v3, "mmsinbox2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    new-instance v3, Lsdk/b/a/a/b/k;

    invoke-direct {v3}, Lsdk/b/a/a/b/k;-><init>()V

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->j(Ljava/lang/String;)V

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->k(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/k;

    move-object v2, v0

    const-string v7, "address"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/k;->a(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/k;

    move-object v2, v0

    const-string v7, "mms_title"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/k;->c(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/k;

    move-object v2, v0

    const-string v7, "mms_uri"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/k;->d(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/k;

    move-object v2, v0

    const-string v7, "flag"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/k;->e(Ljava/lang/String;)V

    const-string v2, "ct"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, ""

    const-string v7, "ct"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/k;

    move-object v2, v0

    const-string v7, "ct"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lsdk/b/a/a/b/k;->a(J)V

    :cond_2f
    const-string v2, "is_grouped"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/k;

    move-object v2, v0

    const-string v7, "is_grouped"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/k;->d(Z)V

    :cond_30
    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/k;

    move-object v2, v0

    const-string v7, "title"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/k;->f(Ljava/lang/String;)V

    :cond_31
    const-string v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/k;

    move-object v2, v0

    const-string v7, "text"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/k;->g(Ljava/lang/String;)V

    :cond_32
    const-string v2, "logo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/k;

    move-object v2, v0

    const-string v7, "logo"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/k;->h(Ljava/lang/String;)V

    :cond_33
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/k;

    move-object v2, v0

    const-string v7, "name"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/k;->b(Ljava/lang/String;)V

    :cond_34
    const-string v2, "is_noclear"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/k;

    move-object v2, v0

    const-string v7, "is_noclear"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/k;->a(Z)V

    :cond_35
    const-string v2, "is_noring"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/k;

    move-object v2, v0

    const-string v7, "is_noring"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/k;->b(Z)V

    :cond_36
    const-string v2, "is_novibrate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/k;

    move-object v2, v0

    const-string v7, "is_novibrate"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/k;->c(Z)V

    move v2, v5

    goto/16 :goto_8

    :cond_37
    const-string v3, "smsinbox2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    new-instance v3, Lsdk/b/a/a/b/s;

    invoke-direct {v3}, Lsdk/b/a/a/b/s;-><init>()V

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->j(Ljava/lang/String;)V

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->k(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/s;

    move-object v2, v0

    const-string v7, "address"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/s;->b(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/s;

    move-object v2, v0

    const-string v7, "content"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/s;->a(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/s;

    move-object v2, v0

    const-string v7, "flag"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/s;->d(Ljava/lang/String;)V

    const-string v2, "ct"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, ""

    const-string v7, "ct"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/s;

    move-object v2, v0

    const-string v7, "ct"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lsdk/b/a/a/b/s;->a(J)V

    :cond_38
    const-string v2, "is_grouped"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/s;

    move-object v2, v0

    const-string v7, "is_grouped"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/s;->d(Z)V

    :cond_39
    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/s;

    move-object v2, v0

    const-string v7, "title"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/s;->e(Ljava/lang/String;)V

    :cond_3a
    const-string v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/s;

    move-object v2, v0

    const-string v7, "text"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/s;->f(Ljava/lang/String;)V

    :cond_3b
    const-string v2, "logo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/s;

    move-object v2, v0

    const-string v7, "logo"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/s;->g(Ljava/lang/String;)V

    :cond_3c
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/s;

    move-object v2, v0

    const-string v7, "name"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/s;->c(Ljava/lang/String;)V

    :cond_3d
    const-string v2, "is_noclear"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/s;

    move-object v2, v0

    const-string v7, "is_noclear"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/s;->a(Z)V

    :cond_3e
    const-string v2, "is_noring"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/s;

    move-object v2, v0

    const-string v7, "is_noring"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/s;->b(Z)V

    :cond_3f
    const-string v2, "is_novibrate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/s;

    move-object v2, v0

    const-string v7, "is_novibrate"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/s;->c(Z)V

    move v2, v5

    goto/16 :goto_8

    :cond_40
    const-string v3, "dial"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    new-instance v3, Lsdk/b/a/a/b/g;

    invoke-direct {v3}, Lsdk/b/a/a/b/g;-><init>()V

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->j(Ljava/lang/String;)V

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->k(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/g;

    move-object v2, v0

    const-string v7, "address"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/g;->a(Ljava/lang/String;)V

    move v2, v5

    goto/16 :goto_8

    :cond_41
    const-string v3, "popupweb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    new-instance v3, Lsdk/b/a/a/b/n;

    invoke-direct {v3}, Lsdk/b/a/a/b/n;-><init>()V

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->j(Ljava/lang/String;)V

    const-string v2, "is_preload"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/n;

    move-object v2, v0

    const-string v7, "is_preload"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/n;->a(Z)V

    :cond_42
    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "is_withcid"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_43

    const-string v7, "is_withcid"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "true"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    const-string v7, "?"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_47

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "&cid="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lsdk/b/a/a/c/h;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_43
    :goto_f
    const-string v7, "is_withnettype"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_56

    const-string v7, "is_withnettype"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "true"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/igexin/sdk/SdkMainService;->o()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_56

    const-string v11, "?"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_48

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "&nettype="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    :goto_10
    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/n;

    move-object v2, v0

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/n;->b(Ljava/lang/String;)V

    :cond_44
    new-instance v2, Ljava/io/File;

    sget-object v7, Lsdk/b/a/a/c/d;->J:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_45

    new-instance v7, Ljava/io/File;

    sget-object v11, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    invoke-direct {v7, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_45

    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Lsdk/b/a/a/b/d;->j()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v7, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_45

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "file://"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/1.htm"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/n;

    move-object v2, v0

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/n;->a(Ljava/lang/String;)V

    :cond_45
    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->k(Ljava/lang/String;)V

    :cond_46
    move v2, v5

    goto/16 :goto_8

    :cond_47
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "?cid="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lsdk/b/a/a/c/h;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f

    :cond_48
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "?nettype="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_10

    :cond_49
    const-string v3, "reportbindapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string v3, "reportaddphoneinfo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string v3, "reportapplist"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    :cond_4a
    const-string v3, "reportbindapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    const/16 v2, 0x11

    :goto_11
    new-instance v3, Lsdk/b/a/a/b/d;

    invoke-direct {v3}, Lsdk/b/a/a/b/d;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->j(Ljava/lang/String;)V

    move v2, v5

    goto/16 :goto_8

    :cond_4b
    const-string v3, "reportaddphoneinfo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const/16 v2, 0x12

    goto :goto_11

    :cond_4c
    const/16 v2, 0x13

    goto :goto_11

    :cond_4d
    const-string v3, "reportapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    new-instance v3, Lsdk/b/a/a/b/p;

    invoke-direct {v3}, Lsdk/b/a/a/b/p;-><init>()V

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->j(Ljava/lang/String;)V

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->k(Ljava/lang/String;)V

    const-string v2, "appstartupid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string v2, "appstartupid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/p;

    move-object v2, v0

    const-string v11, "android"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/p;->a(Ljava/lang/String;)V

    :cond_4e
    move v2, v5

    goto/16 :goto_8

    :cond_4f
    const-string v3, "enablelog"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    new-instance v3, Lsdk/b/a/a/b/h;

    invoke-direct {v3}, Lsdk/b/a/a/b/h;-><init>()V

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->j(Ljava/lang/String;)V

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->k(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/h;

    move-object v2, v0

    const-string v7, "duration"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lsdk/b/a/a/b/h;->a(J)V

    move v2, v5

    goto/16 :goto_8

    :cond_50
    const-string v3, "disablelog"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    new-instance v3, Lsdk/b/a/a/b/d;

    invoke-direct {v3}, Lsdk/b/a/a/b/d;-><init>()V

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->j(Ljava/lang/String;)V

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->k(Ljava/lang/String;)V

    move v2, v5

    goto/16 :goto_8

    :cond_51
    const-string v3, "uploadlog"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    new-instance v3, Lsdk/b/a/a/b/y;

    invoke-direct {v3}, Lsdk/b/a/a/b/y;-><init>()V

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->j(Ljava/lang/String;)V

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->k(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/y;

    move-object v2, v0

    const-string v7, "date"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/y;->a(Ljava/lang/String;)V

    move v2, v5

    goto/16 :goto_8

    :cond_52
    const-string v3, "terminatetask"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    new-instance v3, Lsdk/b/a/a/b/w;

    invoke-direct {v3}, Lsdk/b/a/a/b/w;-><init>()V

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->j(Ljava/lang/String;)V

    const-string v2, "do"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->k(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lsdk/b/a/a/b/w;

    move-object v2, v0

    const-string v7, "taskid"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lsdk/b/a/a/b/w;->a(Ljava/lang/String;)V

    move v2, v5

    goto/16 :goto_8

    :cond_53
    new-instance v3, Lsdk/b/a/a/b/d;

    invoke-direct {v3}, Lsdk/b/a/a/b/d;-><init>()V

    const-string v2, "9"

    invoke-virtual {v3, v2}, Lsdk/b/a/a/b/d;->j(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_54
    move v2, v5

    goto/16 :goto_8

    :cond_55
    move v1, v6

    goto/16 :goto_a

    :cond_56
    move-object v7, v2

    goto/16 :goto_10

    :cond_57
    move-object v7, v2

    goto/16 :goto_d

    :cond_58
    move v1, v5

    goto/16 :goto_9
.end method

.method private e()V
    .locals 12

    const-wide/32 v6, 0x1b7740

    const-wide/32 v4, 0xea60

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x3e8

    new-instance v0, Lcom/igexin/sdk/e;

    iget-object v1, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v1}, Lcom/igexin/sdk/SdkMainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/igexin/sdk/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/e;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "autoReconnect reConnectDelayTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lsdk/b/a/a/a/b;->c:J

    div-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v0, Lsdk/b/a/a/a/b;->c:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_3

    const-wide/16 v0, 0xbb8

    sput-wide v0, Lsdk/b/a/a/a/b;->c:J

    :goto_1
    sget-wide v0, Lsdk/b/a/a/a/b;->c:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    sput-wide v6, Lsdk/b/a/a/a/b;->c:J

    :cond_2
    sget-wide v0, Lsdk/b/a/a/a/b;->c:J

    const-wide/16 v2, 0xa

    div-long v2, v0, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    long-to-double v6, v2

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000

    mul-double/2addr v4, v6

    long-to-double v2, v2

    sub-double v2, v4, v2

    double-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lsdk/b/a/a/a/b;->c:J

    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "autoReconnect reConnectDelayTime \u52a0\u968f\u673a\u503c="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lsdk/b/a/a/a/b;->c:J

    div-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v0, Lsdk/b/a/a/a/b;->c:J

    invoke-static {v0, v1}, Lsdk/b/a/a/c/h;->d(J)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Auto relogin after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long v3, v0, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    const-string v0, "GexinSdk"

    const-string v1, "autoReconnect stop"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-wide v10, Lsdk/b/a/a/a/b;->c:J

    goto/16 :goto_0

    :cond_3
    sget-wide v0, Lsdk/b/a/a/a/b;->c:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_4

    sget-wide v0, Lsdk/b/a/a/a/b;->c:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    sput-wide v0, Lsdk/b/a/a/a/b;->c:J

    goto :goto_1

    :cond_4
    sget-wide v0, Lsdk/b/a/a/a/b;->c:J

    add-long/2addr v0, v4

    sput-wide v0, Lsdk/b/a/a/a/b;->c:J

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lsdk/b/a/a/a/b;->n:Lsdk/b/a/a/e/d/f;

    if-eqz v2, :cond_6

    const-string v2, "GexinSdk"

    const-string v3, "cancle before myTimerTask"

    invoke-static {v2, v3}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lsdk/b/a/a/a/b;->n:Lsdk/b/a/a/e/d/f;

    invoke-virtual {v2}, Lsdk/b/a/a/e/d/f;->q()V

    const/4 v2, 0x0

    iput-object v2, p0, Lsdk/b/a/a/a/b;->n:Lsdk/b/a/a/e/d/f;

    :cond_6
    new-instance v2, Lsdk/b/a/a/a/c;

    invoke-direct {v2, p0, v0, v1}, Lsdk/b/a/a/a/c;-><init>(Lsdk/b/a/a/a/b;J)V

    iput-object v2, p0, Lsdk/b/a/a/a/b;->n:Lsdk/b/a/a/e/d/f;

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v1, p0, Lsdk/b/a/a/a/b;->n:Lsdk/b/a/a/e/d/f;

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/SdkMainService;->a(Lsdk/b/a/a/e/d/f;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    goto/16 :goto_0
.end method

.method private f()V
    .locals 5

    new-instance v0, Ljava/io/File;

    sget-object v1, Lsdk/b/a/a/c/d;->J:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lsdk/b/a/a/a/d;

    invoke-direct {v1, p0}, Lsdk/b/a/a/a/d;-><init>(Lsdk/b/a/a/a/b;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v3}, Lsdk/b/a/a/a/b;->a(Ljava/io/File;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long v2, v0, v2

    const-string v0, "DefaultNotifyAction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "rmDownloadImgCache time = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v4, "table_image"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "taskid"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "createtime < \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "taskid"

    invoke-virtual {v0, v4, v5, v2, v3}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "DefaultNotifyAction"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rmDownloadImgCache cursor.getCount() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "taskid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DefaultNotifyAction"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rmDownloadImgCache taskid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v2

    iget-object v2, v2, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v3, "table_image"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "taskid"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsdk/b/a/a/c/d;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "DefaultNotifyAction"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rmDownloadImgCache fileName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lsdk/b/a/a/a/b;->a(Ljava/io/File;)V

    const-string v0, "DefaultNotifyAction"

    const-string v2, "rmDownloadImgCache file.delete()"

    invoke-static {v0, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 12

    instance-of v0, p1, Lsdk/a/a/a/a/a/e;

    if-eqz v0, :cond_0

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    const-string v0, "heartbeatRsp"

    invoke-static {v0}, Lsdk/c/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lsdk/b/a/a/e/d/a;->a()Lsdk/b/a/a/e/d/a;

    move-result-object v0

    sget-object v1, Lsdk/b/a/a/e/d/c;->a:Lsdk/b/a/a/e/d/c;

    invoke-virtual {v0, v1}, Lsdk/b/a/a/e/d/a;->a(Lsdk/b/a/a/e/d/c;)V

    :cond_0
    instance-of v0, p1, Lsdk/c/b/a/b/b;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/igexin/sdk/SdkMainService;->m:Lsdk/b/a/a/e/d/e;

    invoke-virtual {v0}, Lsdk/b/a/a/e/d/e;->g()V

    const/4 v0, 0x0

    sput v0, Lsdk/b/a/a/a/b;->e:I

    :cond_1
    invoke-static {}, Lsdk/c/a/c/a;->b()V

    instance-of v0, p1, Lsdk/a/a/a/a/a/h;

    if-eqz v0, :cond_23

    check-cast p1, Lsdk/a/a/a/a/a/h;

    sput-object p1, Lsdk/b/a/a/a/b;->m:Lsdk/a/a/a/a/a/h;

    iget v0, p1, Lsdk/a/a/a/a/a/h;->b:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    sget-object v0, Lsdk/b/a/a/a/b;->m:Lsdk/a/a/a/a/a/h;

    iget-object v0, v0, Lsdk/a/a/a/a/a/h;->f:Ljava/lang/Object;

    if-eqz v0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "------sdk receieve message msgcontent: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lsdk/b/a/a/a/b;->m:Lsdk/a/a/a/a/a/h;

    iget-object v0, v0, Lsdk/a/a/a/a/a/h;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    sget-object v0, Lsdk/b/a/a/a/b;->m:Lsdk/a/a/a/a/a/h;

    iget-object v0, v0, Lsdk/a/a/a/a/a/h;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsdk/b/a/a/a/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    sget-object v1, Lsdk/b/a/a/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const-string v0, "DefaultNotifyAction"

    const-string v1, "receieve error formated msg"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v0, "action"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "received"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "DefaultNotifyAction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "server received, cmdID : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lsdk/b/a/a/a/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lsdk/b/a/a/a/b;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v2, v2, Lcom/igexin/sdk/SdkMainService;->j:Lsdk/b/a/a/c/o;

    invoke-virtual {v2, v0, v1}, Lsdk/b/a/a/c/o;->a(J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->n()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "DefaultNotifyAction"

    const-string v1, "cmdId can not parse to Long !!"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "DefaultNotifyAction"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Generate JSONException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    :try_start_3
    const-string v1, "pushmessage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lsdk/b/a/a/c/h;->c(J)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    sget-object v1, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    const-string v2, "socket"

    const-string v3, "disConnect"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/c/a/b/d;->a(Ljava/lang/String;)Lsdk/c/a/b/f;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    sget-object v1, Lsdk/b/a/a/a/b;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\"action\":\"received\",\"id\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lsdk/a/a/a/a/a/a;

    invoke-direct {v2}, Lsdk/a/a/a/a/a/a;-><init>()V

    const/16 v3, 0x80

    iput v3, v2, Lsdk/a/a/a/a/a/a;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v2, Lsdk/a/a/a/a/a/a;->a:I

    const-string v3, "17258000"

    iput-object v3, v2, Lsdk/a/a/a/a/a/a;->d:Ljava/lang/String;

    iput-object v1, v2, Lsdk/a/a/a/a/a/a;->e:Ljava/lang/Object;

    iget-object v1, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v1, v1, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    sget-object v3, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->b()Lsdk/c/a/b/c;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lsdk/c/a/b/d;->a(Ljava/lang/String;Lsdk/c/a/b/c;Ljava/lang/Object;)Lsdk/c/a/b/f;

    if-eqz v0, :cond_5

    const-string v1, "bindappid_result"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "type"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "bind"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "result"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "appid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "cid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsdk/b/a/a/a/b;->g:Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/c/h;->C:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/b/c;

    if-eqz v1, :cond_9

    const-string v3, "ok"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "id"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "DefaultNotifyAction"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "server received, cmdID : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bindappRsp|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsdk/c/a/c/a;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v1, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v1, v1, Lcom/igexin/sdk/SdkMainService;->j:Lsdk/b/a/a/c/o;

    invoke-virtual {v1, v3, v4}, Lsdk/b/a/a/c/o;->a(J)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    if-eqz v0, :cond_8

    :try_start_5
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "bind"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v3, v3, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v4, "table_appinfo"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "appid"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v3, v4, v1, v5, v6}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz v0, :cond_8

    const-string v1, "1"

    iput-object v1, v0, Lsdk/b/a/a/b/c;->f:Ljava/lang/String;

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bind appid success  appid="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    const-string v1, "1"

    :goto_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v0, v0, Lsdk/b/a/a/b/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "cmd"

    const/16 v5, 0x3e9

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "result"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appid"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0, v3}, Lcom/igexin/sdk/SdkMainService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    const-string v1, "DefaultNotifyAction"

    const-string v3, "cmdId can not parse to Long !!"

    invoke-static {v1, v3}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v1, "0"

    const-string v3, "DefaultNotifyAction"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bind failed  appid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bindappRsp|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsdk/c/a/c/a;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    if-eqz v0, :cond_c

    const-string v1, "unbind"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "result"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appid"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_b

    const-string v2, "ok"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v2, "table_appinfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "appid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lsdk/b/a/a/c/h;->C:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unbind success appid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    goto/16 :goto_2

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unbind failed appid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    goto/16 :goto_2

    :cond_c
    const-string v0, "DefaultNotifyAction"

    const-string v1, "bind_result gen error!"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    const-string v1, "pushmessage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v0, "appid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsdk/b/a/a/a/b;->k:Ljava/lang/String;

    const-string v0, "messageid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsdk/b/a/a/a/b;->j:Ljava/lang/String;

    const-string v0, "taskid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    const-string v0, "appkey"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "action_chains"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    sget-object v0, Lsdk/b/a/a/c/h;->C:Ljava/util/HashMap;

    sget-object v3, Lsdk/b/a/a/a/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/b/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pushmessage|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lsdk/b/a/a/a/b;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lsdk/b/a/a/a/b;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsdk/c/a/c/a;->a(Ljava/lang/String;)V

    sget-object v3, Lsdk/b/a/a/a/b;->k:Ljava/lang/String;

    if-eqz v3, :cond_14

    sget-object v3, Lsdk/b/a/a/a/b;->f:Ljava/lang/String;

    if-eqz v3, :cond_14

    sget-object v3, Lsdk/b/a/a/a/b;->j:Ljava/lang/String;

    if-eqz v3, :cond_14

    sget-object v3, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    if-eqz v3, :cond_14

    if-eqz v2, :cond_14

    if-eqz v0, :cond_14

    new-instance v3, Lsdk/b/a/a/b/o;

    invoke-direct {v3}, Lsdk/b/a/a/b/o;-><init>()V

    sget-object v0, Lsdk/b/a/a/a/b;->k:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lsdk/b/a/a/b/o;->a(Ljava/lang/String;)V

    sget-object v0, Lsdk/b/a/a/a/b;->j:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lsdk/b/a/a/b/o;->c(Ljava/lang/String;)V

    sget-object v0, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lsdk/b/a/a/b/o;->d(Ljava/lang/String;)V

    sget-object v0, Lsdk/b/a/a/a/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lsdk/b/a/a/b/o;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lsdk/b/a/a/b/o;->f(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lsdk/b/a/a/b/o;->a(I)V

    sget-object v0, Lsdk/b/a/a/a/b;->m:Lsdk/a/a/a/a/a/h;

    iget-object v0, v0, Lsdk/a/a/a/a/a/h;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lsdk/b/a/a/b/o;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsdk/b/a/a/a/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsdk/b/a/a/a/b;->l:Ljava/lang/String;

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    const-string v0, "0"

    invoke-static {v3, v0}, Lcom/igexin/sdk/SdkMainService;->a(Lsdk/b/a/a/b/o;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lsdk/b/a/a/a/b;->i:Landroid/content/ContentValues;

    const-string v1, "messageid"

    sget-object v4, Lsdk/b/a/a/a/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lsdk/b/a/a/a/b;->i:Landroid/content/ContentValues;

    const-string v1, "taskid"

    sget-object v4, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lsdk/b/a/a/a/b;->i:Landroid/content/ContentValues;

    const-string v1, "appid"

    sget-object v4, Lsdk/b/a/a/a/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lsdk/b/a/a/a/b;->i:Landroid/content/ContentValues;

    const-string v1, "key"

    sget-object v4, Lsdk/b/a/a/a/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lsdk/b/a/a/a/b;->i:Landroid/content/ContentValues;

    const-string v1, "info"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    sget-object v1, Lsdk/b/a/a/a/b;->i:Landroid/content/ContentValues;

    const-string v4, "createtime"

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lsdk/b/a/a/a/b;->m:Lsdk/a/a/a/a/a/h;

    iget-object v0, v0, Lsdk/a/a/a/a/a/h;->e:Ljava/lang/Object;

    if-eqz v0, :cond_e

    sget-object v0, Lsdk/b/a/a/a/b;->m:Lsdk/a/a/a/a/a/h;

    iget-object v0, v0, Lsdk/a/a/a/a/a/h;->e:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_e

    sget-object v1, Lsdk/b/a/a/a/b;->i:Landroid/content/ContentValues;

    const-string v4, "msgextra"

    sget-object v0, Lsdk/b/a/a/a/b;->m:Lsdk/a/a/a/a/a/h;

    iget-object v0, v0, Lsdk/a/a/a/a/a/h;->e:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "-------- msgExtra:  "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    sget-object v0, Lsdk/b/a/a/a/b;->m:Lsdk/a/a/a/a/a/h;

    iget-object v0, v0, Lsdk/a/a/a/a/a/h;->e:Ljava/lang/Object;

    check-cast v0, [B

    const-string v6, "UTF-8"

    invoke-direct {v4, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_e
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_f

    invoke-static {v5, v3}, Lsdk/b/a/a/a/b;->a(Lorg/json/JSONObject;Lsdk/b/a/a/b/o;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto/16 :goto_1

    :catch_3
    move-exception v0

    const-string v1, "DefaultNotifyAction"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    :try_start_8
    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v2, "table_message2"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "taskid"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v4, v6, v7}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v0, "GexinSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "TASKID:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "---"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v2, "table_message2"

    sget-object v4, Lsdk/b/a/a/a/b;->i:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v4}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    sget-object v0, Lcom/igexin/sdk/SdkMainService;->B:Ljava/util/HashMap;

    sget-object v2, Lsdk/b/a/a/a/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pushMessageMap size="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/igexin/sdk/SdkMainService;->B:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    const-string v0, "package:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.igexin.sdk.action.execute"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "taskid"

    sget-object v3, Lsdk/b/a/a/a/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "messageid"

    sget-object v3, Lsdk/b/a/a/a/b;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "appid"

    sget-object v3, Lsdk/b/a/a/c/d;->m:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "pkgname"

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/sdk/SdkMainService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "jsonobjstr"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/igexin/sdk/SdkMainService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_10
    if-eqz v1, :cond_5

    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_11
    if-eqz v1, :cond_12

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_1

    :catch_4
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v1, :cond_5

    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_13

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v0

    :cond_14
    const-string v0, "DefaultNotifyAction"

    const-string v1, "receieve error  pushmessage"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_15
    const-string v1, "response_smsgateway_info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v0, "gw_cell"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lsdk/b/a/a/c/h;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{app}"

    const-string v4, "MDP"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "{platform}"

    const-string v4, "ANDROID"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "{cid}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_16
    iget-object v2, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v3, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v3, v3, Lcom/igexin/sdk/SdkMainService;->w:Landroid/os/Handler;

    invoke-static {v2, v3, v0, v1}, Lsdk/c/a/d/c;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Lsdk/c/a/d/c;

    move-result-object v2

    iget-object v3, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v3, v3, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Lsdk/c/a/b/d;->a(Lsdk/c/a/e/d;ZZ)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gw_cell ==  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  send sms to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    goto/16 :goto_2

    :cond_17
    const-string v1, "response_cellbind_status"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "status"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "binded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v0, Lsdk/b/a/a/c/h;->J:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/c/h;->d:Ljava/lang/String;

    const-string v0, "cell"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsdk/b/a/a/c/h;->G:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lsdk/b/a/a/c/h;->k:Z

    sget-object v0, Lsdk/b/a/a/c/h;->D:Ljava/util/HashMap;

    sget-object v1, Lsdk/b/a/a/c/h;->J:Ljava/lang/String;

    const-string v2, "cell"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->i:Lsdk/b/a/a/c/h;

    invoke-virtual {v0}, Lsdk/b/a/a/c/h;->d()V

    sget-object v0, Lsdk/b/a/a/c/h;->g:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->j()V

    :cond_18
    const-string v0, "DefaultNotifyAction"

    const-string v1, "response_cellbind_status == binded"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    sget-object v1, Lsdk/b/a/a/c/h;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/SdkMainService;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_19
    const-string v1, "unbinded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "DefaultNotifyAction"

    const-string v1, "response_cellbind_status ==  unbinded"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1a
    const-string v1, "response_deviceid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v0, "deviceid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsdk/b/a/a/c/h;->g:Ljava/lang/String;

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->i:Lsdk/b/a/a/c/h;

    invoke-virtual {v0}, Lsdk/b/a/a/c/h;->d()V

    sget-object v0, Lsdk/b/a/a/c/h;->g:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->j()V

    :cond_1b
    const-string v0, "DefaultNotifyAction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceid is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lsdk/b/a/a/c/h;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lsdk/b/a/a/a/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1c
    const-string v1, "redirect_server"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v0, "delay"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "address_list"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "redirect|"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/c/a/c/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1e

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_1d

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    move-result-wide v7

    if-eqz v4, :cond_1d

    :try_start_c
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v9, Lsdk/b/a/a/c/u;

    invoke-direct {v9}, Lsdk/b/a/a/c/u;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "socket://"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lsdk/b/a/a/c/u;->a:Ljava/lang/String;

    const-wide/16 v10, 0x3e8

    mul-long/2addr v4, v10

    add-long/2addr v4, v7

    iput-wide v4, v9, Lsdk/b/a/a/c/u;->b:J

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_8
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1

    :cond_1d
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1e
    :try_start_d
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_1

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    :goto_8
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_1f

    :try_start_e
    sput-wide v0, Lsdk/b/a/a/a/b;->c:J

    :cond_1f
    invoke-static {v2}, Lsdk/b/a/a/c/r;->a(Ljava/util/List;)V

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    sget-object v1, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    const-string v2, "socket"

    const-string v3, "disConnect"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/c/a/b/d;->a(Ljava/lang/String;)Lsdk/c/a/b/f;

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_8

    :cond_20
    const-string v1, "response_ca_list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v0, "ca_list"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "receive CAPerimissionList"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_21

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/igexin/sdk/coordinator/c;

    invoke-direct {v4}, Lcom/igexin/sdk/coordinator/c;-><init>()V

    const-string v5, "pkgname"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/igexin/sdk/coordinator/c;->a(Ljava/lang/String;)V

    const-string v5, "signature"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/igexin/sdk/coordinator/c;->c(Ljava/lang/String;)V

    invoke-static {}, Lsdk/b/a/a/c/a;->a()Lsdk/b/a/a/c/a;

    const-string v5, "permissions"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsdk/b/a/a/c/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/igexin/sdk/coordinator/c;->a(Ljava/util/List;)V

    invoke-virtual {v4}, Lcom/igexin/sdk/coordinator/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_21
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lsdk/b/a/a/c/h;->i:J

    invoke-static {}, Lsdk/b/a/a/c/a;->a()Lsdk/b/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lsdk/b/a/a/c/a;->a(Ljava/util/Map;)V

    goto/16 :goto_2

    :cond_22
    const-string v1, "sendmessage_feedback"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "appid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "taskid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "actionid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "result"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "timestamp"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual/range {v0 .. v6}, Lcom/igexin/sdk/SdkMainService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_2

    :cond_23
    instance-of v0, p1, Lsdk/a/a/a/a/a/g;

    if-eqz v0, :cond_2d

    sget-boolean v0, Lsdk/b/a/a/c/h;->y:Z

    if-nez v0, :cond_5

    invoke-static {}, Lsdk/b/a/a/c/r;->c()V

    check-cast p1, Lsdk/a/a/a/a/a/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoginResult : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p1, Lsdk/a/a/a/a/a/g;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    iget-boolean v0, p1, Lsdk/a/a/a/a/a/g;->a:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loginRsp|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsdk/b/a/a/c/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/c/a/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->n()V

    sget-object v0, Lsdk/b/a/a/c/h;->J:Ljava/lang/String;

    sput-object v0, Lsdk/b/a/a/c/h;->d:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lsdk/b/a/a/c/h;->y:Z

    sget-object v0, Lsdk/b/a/a/c/h;->g:Ljava/lang/String;

    if-nez v0, :cond_24

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->g()V

    :cond_24
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lsdk/b/a/a/c/h;->h:J

    sub-long/2addr v0, v2

    const-string v2, "DefaultNotifyAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":259200000: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lsdk/b/a/a/c/h;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v2, 0xf731400

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    invoke-static {}, Lsdk/b/a/a/c/h;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v1}, Lcom/igexin/sdk/SdkMainService;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/b/a/a/e/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-wide v0, Lsdk/b/a/a/c/h;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    :cond_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lsdk/b/a/a/c/h;->h:J

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->k()V

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/b/a/a/c/h;->b(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    :cond_26
    :goto_a
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lsdk/b/a/a/c/h;->i:J

    sub-long/2addr v0, v2

    const-string v2, "DefaultNotifyAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":86400000: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lsdk/b/a/a/c/h;->i:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_27

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->f()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    :cond_27
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lsdk/b/a/a/c/h;->l:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    invoke-direct {p0}, Lsdk/b/a/a/a/b;->f()V

    invoke-direct {p0}, Lsdk/b/a/a/a/b;->g()V

    sget-object v0, Lsdk/b/a/a/c/h;->C:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lsdk/b/a/a/c/h;->C:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/b/c;

    iget-object v2, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lsdk/b/a/a/b/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/igexin/sdk/SdkMainService;->a(Ljava/lang/String;)V

    goto :goto_c

    :cond_28
    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->j()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lsdk/b/a/a/c/h;->l:J

    :cond_29
    sget-boolean v0, Lsdk/b/a/a/c/h;->N:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->h()V

    :cond_2a
    const/4 v0, 0x1

    sput-boolean v0, Lsdk/b/a/a/c/h;->N:Z

    const/4 v0, 0x1

    sput-boolean v0, Lsdk/b/a/a/c/h;->x:Z

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->i:Lsdk/b/a/a/c/h;

    invoke-virtual {v0}, Lsdk/b/a/a/c/h;->d()V

    const-wide/16 v0, 0x0

    sput-wide v0, Lsdk/b/a/a/a/b;->c:J

    goto/16 :goto_2

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loginRsp|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsdk/b/a/a/c/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/c/a/c/a;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lsdk/b/a/a/c/h;->a:J

    const/4 v0, 0x0

    sput-boolean v0, Lsdk/b/a/a/c/h;->y:Z

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    const/4 v0, 0x0

    sput v0, Lsdk/b/a/a/a/b;->e:I

    goto/16 :goto_2

    :cond_2c
    if-nez v0, :cond_5

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    new-instance v1, Lsdk/b/a/a/e/c;

    invoke-direct {v1}, Lsdk/b/a/a/e/c;-><init>()V

    invoke-virtual {v0, v1}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    invoke-virtual {v0}, Lsdk/c/a/b/d;->d()V

    goto/16 :goto_2

    :cond_2d
    instance-of v0, p1, Lsdk/a/a/a/a/a/t;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lsdk/b/a/a/a/b;->p:Lsdk/b/a/a/e/d/f;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lsdk/b/a/a/a/b;->p:Lsdk/b/a/a/e/d/f;

    invoke-virtual {v0}, Lsdk/b/a/a/e/d/f;->n()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lsdk/b/a/a/a/b;->p:Lsdk/b/a/a/e/d/f;

    invoke-virtual {v0}, Lsdk/b/a/a/e/d/f;->q()V

    :cond_2e
    check-cast p1, Lsdk/a/a/a/a/a/t;

    const/4 v0, 0x0

    iget-wide v1, p1, Lsdk/a/a/a/a/a/t;->a:J

    sget-wide v3, Lsdk/b/a/a/c/h;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_35

    const/4 v0, 0x0

    sput-boolean v0, Lsdk/b/a/a/c/h;->N:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "change session : from ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lsdk/b/a/a/c/h;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lsdk/a/a/a/a/a/t;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    iget-wide v0, p1, Lsdk/a/a/a/a/a/t;->a:J

    sput-wide v0, Lsdk/b/a/a/c/h;->a:J

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v0}, Lcom/igexin/sdk/SdkMainService;->i()V

    invoke-static {}, Lsdk/b/a/a/c/h;->c()V

    sget-object v0, Lsdk/b/a/a/c/h;->C:Ljava/util/HashMap;

    sget-object v1, Lsdk/b/a/a/c/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/b/a/a/b/c;

    if-eqz v0, :cond_2f

    const-string v1, "0"

    iput-object v1, v0, Lsdk/b/a/a/b/c;->f:Ljava/lang/String;

    :cond_2f
    const-wide/16 v0, 0x0

    sput-wide v0, Lsdk/b/a/a/c/h;->l:J

    const/4 v0, 0x1

    move v6, v0

    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new session:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lsdk/b/a/a/c/h;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    new-instance v3, Lsdk/a/a/a/a/a/f;

    invoke-direct {v3}, Lsdk/a/a/a/a/a/f;-><init>()V

    sget-wide v0, Lsdk/b/a/a/c/h;->a:J

    iput-wide v0, v3, Lsdk/a/a/a/a/a/f;->a:J

    const/4 v0, 0x0

    iput-byte v0, v3, Lsdk/a/a/a/a/a/f;->b:B

    const v0, 0xff00

    iput v0, v3, Lsdk/a/a/a/a/a/f;->c:I

    const-string v0, "DefaultNotifyAction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loginCommand.session = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v3, Lsdk/a/a/a/a/a/f;->a:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newtoken|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsdk/b/a/a/c/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/c/a/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    sget-object v1, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->b()Lsdk/c/a/b/c;

    move-result-object v2

    const/4 v4, 0x1

    new-instance v5, Lsdk/b/a/a/e/b;

    iget-object v7, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-direct {v5, v7}, Lsdk/b/a/a/e/b;-><init>(Lcom/igexin/sdk/SdkMainService;)V

    invoke-virtual/range {v0 .. v5}, Lsdk/c/a/b/d;->a(Ljava/lang/String;Lsdk/c/a/b/c;Ljava/lang/Object;ZLsdk/c/a/e/a/g;)Lsdk/c/a/b/f;

    if-eqz v6, :cond_5

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->i:Lsdk/b/a/a/c/h;

    invoke-virtual {v0}, Lsdk/b/a/a/c/h;->d()V

    goto/16 :goto_2

    :cond_30
    instance-of v0, p1, Lsdk/c/a/b/a/a/a;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-boolean v0, v0, Lcom/igexin/sdk/SdkMainService;->c:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/SdkMainService;->a(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lsdk/b/a/a/c/h;->y:Z

    goto/16 :goto_2

    :cond_31
    instance-of v0, p1, Lsdk/b/a/a/e/c;

    if-eqz v0, :cond_33

    sget v0, Lsdk/b/a/a/a/b;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lsdk/b/a/a/a/b;->e:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_32

    iget-object v0, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/SdkMainService;->a(I)V

    :cond_32
    invoke-direct {p0}, Lsdk/b/a/a/a/b;->e()V

    goto/16 :goto_2

    :cond_33
    instance-of v0, p1, Lsdk/b/a/a/e/d;

    if-eqz v0, :cond_34

    const-string v0, "test"

    const-string v1, "doHandleFilter ReconnectNotifyType"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lsdk/b/a/a/a/b;->c:J

    invoke-direct {p0}, Lsdk/b/a/a/a/b;->e()V

    goto/16 :goto_2

    :cond_34
    const/4 v0, 0x1

    goto/16 :goto_1

    :catch_6
    move-exception v0

    goto/16 :goto_b

    :catch_7
    move-exception v0

    goto/16 :goto_a

    :catch_8
    move-exception v4

    goto/16 :goto_7

    :cond_35
    move v6, v0

    goto/16 :goto_d
.end method

.method public final a(Lsdk/c/a/e/d;)Z
    .locals 8

    const/4 v7, 0x4

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "doExceptionCaughtFilter task.getSerialNum() = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsdk/c/a/e/d;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    invoke-virtual {p1}, Lsdk/c/a/e/d;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    invoke-static {}, Lsdk/c/a/c/a;->b()V

    const-string v1, "disconnected|network"

    invoke-static {v1}, Lsdk/c/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lsdk/b/a/a/e/d/a;->a()Lsdk/b/a/a/e/d/a;

    move-result-object v1

    sget-object v3, Lsdk/b/a/a/e/d/c;->c:Lsdk/b/a/a/e/d/c;

    invoke-virtual {v1, v3}, Lsdk/b/a/a/e/d/a;->a(Lsdk/b/a/a/e/d/c;)V

    invoke-static {}, Lsdk/b/a/a/c/r;->d()V

    iget-object v1, p1, Lsdk/c/a/e/d;->O:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/nio/channels/ClosedChannelException;

    if-nez v1, :cond_1

    iget-object v1, p1, Lsdk/c/a/e/d;->O:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_1

    iget-object v1, p1, Lsdk/c/a/e/d;->O:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/net/UnknownHostException;

    if-nez v1, :cond_1

    iget-object v1, p1, Lsdk/c/a/e/d;->O:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/nio/channels/UnresolvedAddressException;

    if-nez v1, :cond_1

    iget-object v1, p1, Lsdk/c/a/e/d;->O:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/net/UnknownServiceException;

    if-eqz v1, :cond_3

    :cond_1
    invoke-static {}, Lsdk/b/a/a/c/r;->a()V

    :try_start_0
    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    iget-object v1, v1, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v3, "table_biinfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "logine_er_connecter_count"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "logine_er_connecter_count"

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    iget-object v1, v1, Lcom/igexin/sdk/SdkMainService;->y:Lsdk/b/a/a/c/e;

    const-string v4, "table_biinfo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v3, v5, v6}, Lsdk/b/a/a/c/e;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    iget-object v1, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-boolean v1, v1, Lcom/igexin/sdk/SdkMainService;->c:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    iget-object v1, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v1, v7}, Lcom/igexin/sdk/SdkMainService;->a(I)V

    sput-boolean v0, Lsdk/b/a/a/c/h;->y:Z

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    sput v0, Lsdk/b/a/a/a/b;->e:I

    invoke-direct {p0}, Lsdk/b/a/a/a/b;->e()V

    iget-object v1, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v1, v7}, Lcom/igexin/sdk/SdkMainService;->a(I)V

    sput-boolean v0, Lsdk/b/a/a/c/h;->y:Z

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "disconnected|user"

    invoke-static {v1}, Lsdk/c/a/c/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    iget-boolean v1, v1, Lcom/igexin/sdk/SdkMainService;->c:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lsdk/b/a/a/c/r;->d()V

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    iget-object v1, p0, Lsdk/b/a/a/a/b;->b:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v1, v7}, Lcom/igexin/sdk/SdkMainService;->a(I)V

    sput-boolean v0, Lsdk/b/a/a/c/h;->y:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x7ff
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 0

    return-void
.end method
