.class final Lcom/baidu/location/r;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/baidu/location/q;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/baidu/location/q;IIII)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/location/r;->a:Lcom/baidu/location/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/location/r;->b:I

    iput v0, p0, Lcom/baidu/location/r;->c:I

    iput v0, p0, Lcom/baidu/location/r;->d:I

    iput v0, p0, Lcom/baidu/location/r;->e:I

    iput p2, p0, Lcom/baidu/location/r;->b:I

    iput p3, p0, Lcom/baidu/location/r;->c:I

    iput p4, p0, Lcom/baidu/location/r;->d:I

    iput p5, p0, Lcom/baidu/location/r;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/r;->c:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/r;->d:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/r;->e:I

    return v0
.end method
