.class public final Lsdk/b/a/a/c/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/net/Uri;

.field private static b:Lsdk/b/a/a/c/l;


# instance fields
.field private c:Lcom/igexin/sdk/SdkMainService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lsdk/b/a/a/c/l;->a:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Lcom/igexin/sdk/SdkMainService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsdk/b/a/a/c/l;->c:Lcom/igexin/sdk/SdkMainService;

    return-void
.end method

.method public static a()Lsdk/b/a/a/c/l;
    .locals 1

    sget-object v0, Lsdk/b/a/a/c/l;->b:Lsdk/b/a/a/c/l;

    return-object v0
.end method

.method public static a(Lcom/igexin/sdk/SdkMainService;)Lsdk/b/a/a/c/l;
    .locals 1

    sget-object v0, Lsdk/b/a/a/c/l;->b:Lsdk/b/a/a/c/l;

    if-nez v0, :cond_0

    new-instance v0, Lsdk/b/a/a/c/l;

    invoke-direct {v0, p0}, Lsdk/b/a/a/c/l;-><init>(Lcom/igexin/sdk/SdkMainService;)V

    sput-object v0, Lsdk/b/a/a/c/l;->b:Lsdk/b/a/a/c/l;

    :cond_0
    sget-object v0, Lsdk/b/a/a/c/l;->b:Lsdk/b/a/a/c/l;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Lsdk/b/a/a/b/j;Ljava/lang/String;)I
    .locals 16

    if-eqz p3, :cond_0

    :try_start_0
    const-string v1, "utf-8"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "iso-8859-1"

    invoke-static {v1, v2}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/b/a/a/c/l;->c:Lcom/igexin/sdk/SdkMainService;

    iget-object v1, v1, Lcom/igexin/sdk/SdkMainService;->h:Lsdk/b/a/a/c/m;

    invoke-virtual/range {p2 .. p2}, Lsdk/b/a/a/b/j;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsdk/b/a/a/c/m;->b(Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lsdk/b/a/a/b/j;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lsdk/b/a/a/b/j;->e()J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    div-long v6, v1, v5

    invoke-virtual/range {p2 .. p2}, Lsdk/b/a/a/b/j;->d()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual/range {p2 .. p2}, Lsdk/b/a/a/b/j;->g()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {}, Lsdk/c/a/c/a;->b()V

    const/4 v2, -0x1

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lsdk/b/a/a/c/l;->c:Lcom/igexin/sdk/SdkMainService;

    iget-object v5, v5, Lcom/igexin/sdk/SdkMainService;->h:Lsdk/b/a/a/c/m;

    invoke-virtual {v5, v4}, Lsdk/b/a/a/c/m;->a(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lsdk/b/a/a/c/l;->c:Lcom/igexin/sdk/SdkMainService;

    iget-object v5, v5, Lcom/igexin/sdk/SdkMainService;->h:Lsdk/b/a/a/c/m;

    invoke-virtual {v5, v2}, Lsdk/b/a/a/c/m;->a(I)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :cond_1
    :goto_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "thread_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "date"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "msg_box"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "sub"

    move-object/from16 v0, p3

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sub_cs"

    const/16 v5, 0x6a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "ct_t"

    const-string v5, "application/vnd.wap.multipart.related"

    invoke-virtual {v10, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "m_type"

    const/16 v5, 0x84

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "v"

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "pri"

    const/16 v5, 0x81

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "d_rpt"

    const/16 v5, 0x81

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "retr_txt"

    const-string v3, "true"

    invoke-virtual/range {p2 .. p2}, Lsdk/b/a/a/b/j;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "true"

    :goto_3
    invoke-virtual {v10, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "read"

    invoke-virtual/range {p2 .. p2}, Lsdk/b/a/a/b/j;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "m_size"

    invoke-virtual/range {p2 .. p2}, Lsdk/b/a/a/b/j;->k()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/b/a/a/c/l;->c:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v3}, Lcom/igexin/sdk/SdkMainService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lsdk/b/a/a/c/l;->a:Landroid/net/Uri;

    invoke-virtual {v3, v5, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v1, -0x1

    :goto_4
    return v1

    :catch_0
    move-exception v1

    const-string p3, ""

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x2

    goto/16 :goto_1

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_2

    :cond_3
    const-string v3, "false"

    goto :goto_3

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pdu uri : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lsdk/b/a/a/c/l;->a:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "pduID : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "content://mms/"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/addr"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    const-string v3, "msg_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "address"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    move-object v3, v4

    :goto_5
    invoke-virtual {v10, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    const/16 v7, 0x89

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "charset"

    const/16 v7, 0x6a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/b/a/a/c/l;->c:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v3}, Lcom/igexin/sdk/SdkMainService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v6, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    const-string v3, "msg_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "address"

    const/4 v7, 0x1

    if-ne v1, v7, :cond_5

    sget-object v4, Lsdk/b/a/a/c/h;->G:Ljava/lang/String;

    :cond_5
    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const/16 v3, 0x97

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "charset"

    const/16 v3, 0x6a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/b/a/a/c/l;->c:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v1}, Lcom/igexin/sdk/SdkMainService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v6, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "content://mms/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/part"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsdk/b/a/a/e/c/a;

    invoke-virtual {v1}, Lsdk/b/a/a/e/c/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lsdk/b/a/a/e/c/a;->b()Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x0

    const-string v12, "application/smil"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    :try_start_2
    new-instance v3, Ljava/lang/String;

    iget-object v7, v1, Lsdk/b/a/a/e/c/a;->e:[B

    iget v11, v1, Lsdk/b/a/a/e/c/a;->d:I

    iget v1, v1, Lsdk/b/a/a/e/c/a;->c:I

    const-string v12, "UTF-8"

    invoke-direct {v3, v7, v11, v1, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    const-string v1, "mid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "seq"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "ct"

    const-string v7, "application/smil"

    invoke-virtual {v10, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "chset"

    const/16 v7, 0x6a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cid"

    const-string v7, "<start>"

    invoke-virtual {v10, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cl"

    const-string v7, "smil.smi"

    invoke-virtual {v10, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "text"

    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/b/a/a/c/l;->c:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v1}, Lcom/igexin/sdk/SdkMainService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v4, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_6

    :cond_7
    sget-object v3, Lsdk/b/a/a/c/h;->G:Ljava/lang/String;

    goto/16 :goto_5

    :catch_2
    move-exception v1

    const/4 v1, -0x1

    goto/16 :goto_4

    :cond_8
    const-string v12, "text"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    :try_start_3
    new-instance v3, Ljava/lang/String;

    iget-object v12, v1, Lsdk/b/a/a/e/c/a;->e:[B

    iget v13, v1, Lsdk/b/a/a/e/c/a;->d:I

    iget v14, v1, Lsdk/b/a/a/e/c/a;->c:I

    const-string v15, "UTF-8"

    invoke-direct {v3, v12, v13, v14, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_9
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    const-string v12, "mid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "seq"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "ct"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "name"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "chset"

    const/16 v12, 0x6a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "cl"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_a

    const-string v11, "text"

    invoke-virtual {v10, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "<"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/16 v13, 0x2e

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "cid"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lsdk/b/a/a/c/l;->c:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v11}, Lcom/igexin/sdk/SdkMainService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v4, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "part uri : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    if-eqz v3, :cond_b

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    goto/16 :goto_6

    :catch_3
    move-exception v1

    const/4 v1, -0x1

    goto/16 :goto_4

    :cond_b
    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "partID : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "/data/data/com.android.providers.telephony/app_parts/PART_"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    const-string v12, "_data"

    invoke-virtual {v10, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lsdk/b/a/a/c/l;->c:Lcom/igexin/sdk/SdkMainService;

    invoke-virtual {v7}, Lcom/igexin/sdk/SdkMainService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "_id = "

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    invoke-virtual {v7, v4, v10, v3, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "part update : "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lsdk/b/a/a/c/l;->c:Lcom/igexin/sdk/SdkMainService;

    invoke-static {v3}, Lsdk/b/a/a/e/a;->a(Landroid/content/Context;)Lsdk/b/a/a/e/a;

    move-result-object v3

    iget-object v7, v1, Lsdk/b/a/a/e/c/a;->e:[B

    iget v12, v1, Lsdk/b/a/a/e/c/a;->d:I

    iget v1, v1, Lsdk/b/a/a/e/c/a;->c:I

    invoke-virtual {v3, v11, v7, v12, v1}, Lsdk/b/a/a/e/a;->a(Landroid/net/Uri;[BII)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lsdk/c/a/c/a;->b()V

    goto/16 :goto_6

    :cond_c
    const/4 v1, -0x1

    if-eq v2, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lsdk/b/a/a/c/l;->c:Lcom/igexin/sdk/SdkMainService;

    iget-object v1, v1, Lcom/igexin/sdk/SdkMainService;->h:Lsdk/b/a/a/c/m;

    invoke-virtual {v1, v2}, Lsdk/b/a/a/c/m;->b(I)I

    :cond_d
    invoke-static {}, Lsdk/c/a/c/a;->b()V

    move v1, v5

    goto/16 :goto_4
.end method