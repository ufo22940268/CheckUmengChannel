.class final Lcom/zhangdan/app/activities/setting/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/i;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/i;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/activities/setting/SettingActivity;->dismissDialog(I)V

    new-instance v0, Lcom/zhangdan/app/activities/setting/h;

    iget-object v1, p0, Lcom/zhangdan/app/activities/setting/i;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/setting/h;-><init>(Landroid/app/Activity;)V

    new-array v1, v2, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/setting/h;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    return-void
.end method
