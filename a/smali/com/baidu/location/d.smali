.class public abstract Lcom/baidu/location/d;
.super Ljava/lang/Object;


# instance fields
.field public a:D

.field public b:D

.field public c:F

.field public d:F

.field public e:Ljava/lang/String;

.field public f:D

.field public g:D

.field public h:I

.field public i:Z

.field public j:Lcom/baidu/location/i;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/baidu/location/d;->a:D

    iput-wide v0, p0, Lcom/baidu/location/d;->b:D

    iput v2, p0, Lcom/baidu/location/d;->c:F

    iput v2, p0, Lcom/baidu/location/d;->d:F

    iput-object v4, p0, Lcom/baidu/location/d;->e:Ljava/lang/String;

    iput-wide v0, p0, Lcom/baidu/location/d;->f:D

    iput-wide v0, p0, Lcom/baidu/location/d;->g:D

    iput v3, p0, Lcom/baidu/location/d;->h:I

    iput-boolean v3, p0, Lcom/baidu/location/d;->i:Z

    iput-object v4, p0, Lcom/baidu/location/d;->j:Lcom/baidu/location/i;

    return-void
.end method

.method public static a(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new location, not far from the destination..."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/ak;->e()V

    return-void
.end method
