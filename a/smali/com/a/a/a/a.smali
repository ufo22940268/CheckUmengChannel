.class public final Lcom/a/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/a/a/b;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/a/a/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lcom/a/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/a/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lcom/a/a/a/a;->a:Lcom/a/a/a/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a;->b:Ljava/util/Map;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ImageLoader : please add the permission "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to the manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/a/e/b;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->n()Lcom/a/a/a/e/b;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/a/a/a/d/c;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->m()Lcom/a/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/a/a/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a;->a:Lcom/a/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/a/b;->j()Lcom/a/a/a/b/a;

    move-result-object v0

    return-object v0
.end method
