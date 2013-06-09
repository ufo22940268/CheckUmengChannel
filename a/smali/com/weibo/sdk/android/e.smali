.class public final Lcom/weibo/sdk/android/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static e:Z

.field private static f:Lcom/weibo/sdk/android/e;


# instance fields
.field public d:Lcom/weibo/sdk/android/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://open.weibo.cn/oauth2/authorize"

    sput-object v0, Lcom/weibo/sdk/android/e;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/weibo/sdk/android/e;->f:Lcom/weibo/sdk/android/e;

    const-string v0, ""

    sput-object v0, Lcom/weibo/sdk/android/e;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/weibo/sdk/android/e;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/weibo/sdk/android/e;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weibo/sdk/android/e;->d:Lcom/weibo/sdk/android/a;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/e;
    .locals 2

    const-class v1, Lcom/weibo/sdk/android/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/weibo/sdk/android/e;->f:Lcom/weibo/sdk/android/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/weibo/sdk/android/e;

    invoke-direct {v0}, Lcom/weibo/sdk/android/e;-><init>()V

    sput-object v0, Lcom/weibo/sdk/android/e;->f:Lcom/weibo/sdk/android/e;

    :cond_0
    sput-object p0, Lcom/weibo/sdk/android/e;->b:Ljava/lang/String;

    sput-object p1, Lcom/weibo/sdk/android/e;->c:Ljava/lang/String;

    sget-object v0, Lcom/weibo/sdk/android/e;->f:Lcom/weibo/sdk/android/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/weibo/sdk/android/g;)V
    .locals 4

    new-instance v0, Lcom/weibo/sdk/android/m;

    invoke-direct {v0}, Lcom/weibo/sdk/android/m;-><init>()V

    new-instance v1, Lcom/weibo/sdk/android/f;

    invoke-direct {v1, p0, p2}, Lcom/weibo/sdk/android/f;-><init>(Lcom/weibo/sdk/android/e;Lcom/weibo/sdk/android/g;)V

    const-string v2, "client_id"

    sget-object v3, Lcom/weibo/sdk/android/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/weibo/sdk/android/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "response_type"

    const-string v3, "token"

    invoke-virtual {v0, v2, v3}, Lcom/weibo/sdk/android/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "redirect_uri"

    sget-object v3, Lcom/weibo/sdk/android/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/weibo/sdk/android/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "display"

    const-string v3, "mobile"

    invoke-virtual {v0, v2, v3}, Lcom/weibo/sdk/android/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/weibo/sdk/android/e;->d:Lcom/weibo/sdk/android/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/weibo/sdk/android/e;->d:Lcom/weibo/sdk/android/a;

    invoke-virtual {v2}, Lcom/weibo/sdk/android/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "access_token"

    iget-object v3, p0, Lcom/weibo/sdk/android/e;->d:Lcom/weibo/sdk/android/a;

    invoke-virtual {v3}, Lcom/weibo/sdk/android/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/weibo/sdk/android/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/weibo/sdk/android/e;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/weibo/sdk/android/c/b;->a(Lcom/weibo/sdk/android/m;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "Error"

    const-string v1, "Application requires permission to access the Internet"

    invoke-static {p1, v0, v1}, Lcom/weibo/sdk/android/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/weibo/sdk/android/h;

    invoke-direct {v2, p1, v0, v1}, Lcom/weibo/sdk/android/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/weibo/sdk/android/g;)V

    invoke-virtual {v2}, Lcom/weibo/sdk/android/h;->show()V

    goto :goto_0
.end method
