.class final Lcom/baidu/location/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/f;


# direct methods
.method private constructor <init>(Lcom/baidu/location/f;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/ac;->a:Lcom/baidu/location/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/f;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/ac;-><init>(Lcom/baidu/location/f;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/ac;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->a(Lcom/baidu/location/f;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/ac;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->b(Lcom/baidu/location/f;)Z

    iget-object v0, p0, Lcom/baidu/location/ac;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->c(Lcom/baidu/location/f;)V

    :cond_0
    return-void
.end method
