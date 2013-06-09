.class final Lcom/zhangdan/app/activities/setting/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/l;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/l;->a:Lcom/zhangdan/app/activities/setting/SettingActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/setting/SettingActivity;->dismissDialog(I)V

    return-void
.end method
