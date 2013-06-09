.class final Lcom/zhangdan/app/activities/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mapapi/LocationListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/MainFragmentActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/MainFragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/e;->a:Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/e;->a:Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-static {v0}, Lcom/zhangdan/app/activities/MainFragmentActivity;->a(Lcom/zhangdan/app/activities/MainFragmentActivity;)Lcom/zhangdan/preferential/a/i;

    invoke-static {p1}, Lcom/zhangdan/preferential/a/i;->a(Landroid/location/Location;)V

    :cond_0
    return-void
.end method
