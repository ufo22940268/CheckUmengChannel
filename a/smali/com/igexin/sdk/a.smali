.class public final Lcom/igexin/sdk/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/igexin/sdk/a;->a:Landroid/content/Context;

    sput-object v0, Lcom/igexin/sdk/a;->b:Ljava/lang/String;

    sput-wide v1, Lcom/igexin/sdk/a;->c:J

    sput-wide v1, Lcom/igexin/sdk/a;->d:J

    return-void
.end method

.method public static final a([Lcom/igexin/sdk/c;)I
    .locals 8

    array-length v0, p0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const-string v0, "tag"

    const-string v1, "tag\u6570\u91cf\u8d85\u8fc7200"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e21

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/igexin/sdk/a;->d:J

    const-wide/32 v5, 0x36ee80

    sub-long v5, v1, v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bfb\u53d6\u8fc7\u5feb = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/igexin/sdk/a;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e22

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/igexin/sdk/a;->b([Lcom/igexin/sdk/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"action\":\"set_tag\",\"id\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", \"appid\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lsdk/b/a/a/c/d;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", \"tags\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lsdk/b/a/a/c/o;->a()Lsdk/b/a/a/c/o;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v0, Lsdk/b/a/a/b/q;

    const/4 v4, 0x2

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lsdk/b/a/a/b/q;-><init>(JLjava/lang/String;BJ)V

    invoke-virtual {v7, v0}, Lsdk/b/a/a/c/o;->a(Lsdk/b/a/a/b/q;)V

    :cond_2
    const-string v0, "GexinSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add tag :--> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lsdk/a/a/a/a/a/a;

    invoke-direct {v0}, Lsdk/a/a/a/a/a/a;-><init>()V

    const/16 v4, 0x80

    iput v4, v0, Lsdk/a/a/a/a/a/a;->b:I

    const-string v4, "17258000"

    iput-object v4, v0, Lsdk/a/a/a/a/a/a;->d:Ljava/lang/String;

    iput-object v3, v0, Lsdk/a/a/a/a/a/a;->e:Ljava/lang/Object;

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v3

    sget-object v4, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->b()Lsdk/c/a/b/c;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lsdk/c/a/b/d;->a(Ljava/lang/String;Lsdk/c/a/b/c;Ljava/lang/Object;)Lsdk/c/a/b/f;

    sput-wide v1, Lcom/igexin/sdk/a;->d:J

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.18.2"

    return-object v0
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/igexin/sdk/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopService GexinMainService.getInstance() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " op_app = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    sget-object v1, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    const-string v2, "socket"

    const-string v3, "disConnect"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/c/a/b/d;->a(Ljava/lang/String;)Lsdk/c/a/b/f;

    new-instance v0, Lcom/igexin/sdk/e;

    invoke-direct {v0, p0}, Lcom/igexin/sdk/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/e;->b()V

    return-void
.end method

.method public static final a(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    const/16 v1, 0xf0

    if-lt p0, v1, :cond_1

    const v1, 0x15180

    if-gt p0, v1, :cond_1

    :cond_0
    sput p0, Lsdk/b/a/a/c/h;->q:I

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->i:Lsdk/b/a/a/c/h;

    invoke-virtual {v0}, Lsdk/b/a/a/c/h;->d()V

    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bbe\u7f6e\u5fc3\u8df3\u95f4\u9694 interval:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static final a(II)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz p0, :cond_0

    const/16 v1, 0x18

    if-ge p0, v1, :cond_0

    if-ltz p1, :cond_0

    const/16 v1, 0x17

    if-le p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sput p0, Lsdk/b/a/a/c/h;->o:I

    sput p1, Lsdk/b/a/a/c/h;->p:I

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->i:Lsdk/b/a/a/c/h;

    invoke-virtual {v0}, Lsdk/b/a/a/c/h;->d()V

    const-string v0, "GexinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bbe\u7f6e\u9759\u9ed8\u65f6\u95f4\u6bb5 begin:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lsdk/b/a/a/c/h;->c(J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lsdk/c/a/b/d;->c()Lsdk/c/a/b/d;

    move-result-object v0

    sget-object v1, Lsdk/b/a/a/c/d;->d:Ljava/lang/String;

    const-string v2, "socket"

    const-string v3, "disConnect"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/c/a/b/d;->a(Ljava/lang/String;)Lsdk/c/a/b/f;

    const-string v0, "GexinSdk"

    const-string v1, "\u5f53\u524d\u5904\u5728\u9759\u9ed8\u65f6\u95f4\u6bb5\u5185\uff01"

    invoke-static {v0, v1}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    new-instance v1, Lsdk/b/a/a/e/d;

    invoke-direct {v1}, Lsdk/b/a/a/e/d;-><init>()V

    invoke-virtual {v0, v1}, Lsdk/c/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v0

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    invoke-virtual {v0}, Lsdk/c/a/b/d;->d()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;[B)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p1, :cond_0

    array-length v3, p1

    const/16 v4, 0x1000

    if-gt v3, v4, :cond_0

    sget-wide v3, Lcom/igexin/sdk/a;->c:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/igexin/sdk/SdkMainService;->m()Lcom/igexin/sdk/SdkMainService;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/igexin/sdk/SdkMainService;->a(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    sput-wide v1, Lcom/igexin/sdk/a;->c:J

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b([Lcom/igexin/sdk/c;)Ljava/lang/String;
    .locals 4

    array-length v1, p0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/igexin/sdk/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final b()V
    .locals 0

    return-void
.end method

.method public static final c()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
