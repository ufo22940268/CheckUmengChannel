.class public final Lcom/zhangdan/preferential/data/model/q;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/zhangdan/preferential/data/model/i;Landroid/graphics/Bitmap;)Lcom/zhangdan/preferential/data/model/q;
    .locals 2

    new-instance v0, Lcom/zhangdan/preferential/data/model/q;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/q;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/i;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/q;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/i;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/q;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/zhangdan/preferential/data/model/q;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static a(Lcom/zhangdan/preferential/data/model/l;Landroid/graphics/Bitmap;)Lcom/zhangdan/preferential/data/model/q;
    .locals 2

    new-instance v0, Lcom/zhangdan/preferential/data/model/q;

    invoke-direct {v0}, Lcom/zhangdan/preferential/data/model/q;-><init>()V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/data/model/l;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/q;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/zhangdan/preferential/data/model/l;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/zhangdan/preferential/data/model/q;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/zhangdan/preferential/data/model/q;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/a/b;)V
    .locals 4

    const/16 v3, 0x64

    new-instance v0, Lcom/tencent/mm/sdk/a/i;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/a/i;-><init>()V

    const-string v1, "http://www.51zhangdan.com"

    iput-object v1, v0, Lcom/tencent/mm/sdk/a/i;->a:Ljava/lang/String;

    new-instance v1, Lcom/tencent/mm/sdk/a/g;

    invoke-direct {v1, v0}, Lcom/tencent/mm/sdk/a/g;-><init>(Lcom/tencent/mm/sdk/a/h;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zhangdan/preferential/data/model/q;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-51\u4f18\u60e0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/a/g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/preferential/data/model/q;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/sdk/a/g;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/preferential/data/model/q;->a:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/preferential/data/model/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v0}, Lcom/zhangdan/preferential/a/d;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/a/g;->d:[B

    new-instance v0, Lcom/tencent/mm/sdk/a/d;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/a/d;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/sdk/a/d;->b:Lcom/tencent/mm/sdk/a/g;

    invoke-interface {p1, v0}, Lcom/tencent/mm/sdk/a/b;->a(Lcom/tencent/mm/sdk/a/a;)Z

    return-void
.end method
