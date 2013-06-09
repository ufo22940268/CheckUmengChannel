.class final Lcom/zhangdan/preferential/bu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mapapi/LocationListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/UpdatePositionService;


# direct methods
.method constructor <init>(Lcom/zhangdan/preferential/UpdatePositionService;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/bu;->a:Lcom/zhangdan/preferential/UpdatePositionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/bu;->a:Lcom/zhangdan/preferential/UpdatePositionService;

    invoke-static {v0}, Lcom/zhangdan/preferential/UpdatePositionService;->a(Lcom/zhangdan/preferential/UpdatePositionService;)Lcom/zhangdan/preferential/a/i;

    invoke-static {p1}, Lcom/zhangdan/preferential/a/i;->a(Landroid/location/Location;)V

    :cond_0
    return-void
.end method
