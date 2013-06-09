.class public Lcom/zhangdan/app/activities/setting/SettingActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/receiver/c;


# instance fields
.field private c:Lcom/zhangdan/app/widget/AvatarView;

.field private d:Lcom/zhangdan/app/e/c;

.field private e:Lcom/zhangdan/app/receiver/a;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/setting/SettingActivity;)Lcom/zhangdan/app/e/c;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->d:Lcom/zhangdan/app/e/c;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/setting/SettingActivity;Lcom/zhangdan/app/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->d:Lcom/zhangdan/app/e/c;

    return-void
.end method

.method private b(Lcom/zhangdan/app/data/model/l;)V
    .locals 4

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/l;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const v0, 0x7f0600f0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "sina"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f080173

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/l;->c()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0600f1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "quick"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const v1, 0x7f080134

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->f:Z

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-string v1, "qq"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f080174

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f080175

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->f:Z

    goto :goto_1
.end method


# virtual methods
.method public final b_()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->c:Lcom/zhangdan/app/widget/AvatarView;

    invoke-static {p0, v0}, Lcom/zhangdan/app/e/c;->a(Landroid/content/Context;Lcom/zhangdan/app/widget/AvatarView;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/WrappedActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->d:Lcom/zhangdan/app/e/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->d:Lcom/zhangdan/app/e/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhangdan/app/e/c;->a(IILandroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->c()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->b(Lcom/zhangdan/app/data/model/l;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const-string v0, "yuan_setting_avatar"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0002

    new-instance v2, Lcom/zhangdan/app/activities/setting/n;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/setting/n;-><init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :sswitch_2
    const-string v0, "yuan_setting_logout"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/zhangdan/app/activities/setting/SettingActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/zhangdan/app/activities/setting/SettingActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    :sswitch_3
    const-string v0, "card"

    const-string v1, "update_info"

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/umeng/b/e;

    invoke-direct {v0, v1}, Lcom/umeng/b/e;-><init>(Lorg/json/JSONObject;)V

    const-string v2, "version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/umeng/b/e;->c:Ljava/lang/String;

    :cond_1
    const-string v2, "path"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "path"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/umeng/b/e;->d:Ljava/lang/String;

    :cond_2
    const-string v2, "hasUpdate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "hasUpdate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/umeng/b/e;->a:Z

    :cond_3
    const-string v2, "updateLog"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "updateLog"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/umeng/b/e;->b:Ljava/lang/String;

    :cond_4
    const-string v2, "delta"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "delta"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/umeng/b/e;->i:Z

    :cond_5
    const-string v2, "new_md5"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "new_md5"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/umeng/b/e;->f:Ljava/lang/String;

    :cond_6
    const-string v2, "patch_md5"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "patch_md5"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/umeng/b/e;->j:Ljava/lang/String;

    :cond_7
    const-string v2, "proto_ver"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "proto_ver"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/umeng/b/e;->e:Ljava/lang/String;

    :cond_8
    const-string v2, "size"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "size"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/umeng/b/e;->g:Ljava/lang/String;

    :cond_9
    const-string v2, "target_size"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "target_size"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/umeng/b/e;->h:Ljava/lang/String;

    :cond_a
    invoke-static {p0, v0}, Lcom/umeng/b/b;->a(Landroid/content/Context;Lcom/umeng/b/e;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/zhangdan/app/activities/setting/SettingActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f060039 -> :sswitch_0
        0x7f0600ef -> :sswitch_1
        0x7f0600f3 -> :sswitch_4
        0x7f0600f4 -> :sswitch_2
        0x7f0600f5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f0600f7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->setContentView(I)V

    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08016e

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/d;->a(Landroid/view/View;I)V

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/zhangdan/app/activities/setting/SettingActivity;->b(Lcom/zhangdan/app/data/model/l;)V

    const v0, 0x7f0600f2

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f08016f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0600f4

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600f3

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600ef

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/AvatarView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->c:Lcom/zhangdan/app/widget/AvatarView;

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->c:Lcom/zhangdan/app/widget/AvatarView;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/widget/AvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->c:Lcom/zhangdan/app/widget/AvatarView;

    invoke-static {p0, v0}, Lcom/zhangdan/app/e/c;->a(Landroid/content/Context;Lcom/zhangdan/app/widget/AvatarView;)V

    new-instance v0, Lcom/zhangdan/app/receiver/a;

    invoke-direct {v0, p0, v6}, Lcom/zhangdan/app/receiver/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->e:Lcom/zhangdan/app/receiver/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->e:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/c;)V

    const v0, 0x7f0600f6

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/zhangdan/app/h/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Android "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1, v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0600f5

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v7}, Lcom/zhangdan/app/activities/setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const v3, 0x7f0a0024

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-ne v4, p1, :cond_0

    new-instance v0, Lcom/zhangdan/app/widget/a;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080176

    invoke-virtual {v0, v1, v3}, Lcom/zhangdan/app/widget/a;->a(II)V

    const v1, 0x7f080177

    const v2, 0x7f080178

    new-instance v3, Lcom/zhangdan/app/activities/setting/i;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/setting/i;-><init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V

    new-instance v4, Lcom/zhangdan/app/activities/setting/j;

    invoke-direct {v4, p0}, Lcom/zhangdan/app/activities/setting/j;-><init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zhangdan/app/widget/a;->a(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0

    :cond_0
    if-ne v2, p1, :cond_1

    new-instance v0, Lcom/zhangdan/app/widget/a;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08017a

    invoke-virtual {v0, v1, v3}, Lcom/zhangdan/app/widget/a;->a(II)V

    const v1, 0x7f08018b

    const v2, 0x7f080020

    new-instance v3, Lcom/zhangdan/app/activities/setting/k;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/setting/k;-><init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V

    new-instance v4, Lcom/zhangdan/app/activities/setting/l;

    invoke-direct {v4, p0}, Lcom/zhangdan/app/activities/setting/l;-><init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zhangdan/app/widget/a;->a(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f08016d

    invoke-virtual {p0, v3}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f0800b4

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lcom/zhangdan/app/activities/setting/m;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/setting/m;-><init>(Lcom/zhangdan/app/activities/setting/SettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->e:Lcom/zhangdan/app/receiver/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->e:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/setting/SettingActivity;->e:Lcom/zhangdan/app/receiver/a;

    :cond_0
    return-void
.end method
