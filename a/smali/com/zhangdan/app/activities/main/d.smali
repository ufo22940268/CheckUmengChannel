.class final Lcom/zhangdan/app/activities/main/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zhangdan/app/receiver/c;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/main/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/main/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/main/d;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b_()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/main/d;->a:Lcom/zhangdan/app/activities/main/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/main/d;->a:Lcom/zhangdan/app/activities/main/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/main/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/main/a;->a(Lcom/zhangdan/app/activities/main/a;Landroid/content/Context;)V

    return-void
.end method
