drop procedure if exists `appointment_history_insert`;
delimiter //
create procedure `appointment_history_insert`
(
    id varchar(11),
    appointment_id int(11),
    field varchar(255),
    old_value varchar(255),
    new_value varchar(255),
    created_by int(11)
)
begin
insert into `appointment_history` (
    `appointment_id`,
    `field`,
    `old_value`,
    `new_value`,
    `created_by`,
    `created_at`
) values (
    appointment_id,
    field,
    old_value,
    new_value,
    created_by,
    now()
);
end;//
delimiter ;

drop trigger if exists `appointment_history_trigger`;
delimiter //
create trigger `appointment_history_trigger`
after update on `appointments`
for each row
begin
    if ( coalesce(old.user_id, '') <> coalesce(new.user_id, '') ) then call appointment_history_insert ('', new.id, "user_id", old.user_id, new.user_id,  new.updated_by ); end if;
    if ( coalesce(old.invoice_no,'') <> coalesce(new.invoice_no,'') ) then call appointment_history_insert ('', new.id, "invoice_no", old.invoice_no, new.invoice_no,  new.updated_by ); end if;
    if ( coalesce(old.salon_id, '') <> coalesce(new.salon_id, '') ) then call appointment_history_insert ('', new.id, "salon_id", old.salon_id, new.salon_id,  new.updated_by ); end if;
    if ( coalesce(old.source,'') <> coalesce(new.source,'') ) then call appointment_history_insert ('', new.id, "source", old.source, new.source,  new.updated_by ); end if;
    if ( coalesce(old.channel,'') <> coalesce(new.channel,'') ) then call appointment_history_insert ('', new.id, "channel", old.channel, new.channel,  new.updated_by ); end if;
    if ( coalesce(old.date, '') <> coalesce(new.date, '') ) then call appointment_history_insert ('', new.id, "date", old.date, new.date,  new.updated_by ); end if;
    if ( old.time <> new.time) then call appointment_history_insert ('', new.id, "time", old.time, new.time,  new.updated_by ); end if;
    if ( coalesce(old.name, '') <> coalesce(new.name,'') ) then call appointment_history_insert ('', new.id, "name", old.name, new.name,  new.updated_by ); end if;
    if ( coalesce(old.email, '') <> coalesce(new.email, '') ) then call appointment_history_insert ('', new.id, "email", old.email, new.email,  new.updated_by ); end if;
    if ( coalesce(old.mobile, '') <> coalesce(new.mobile, '') ) then call appointment_history_insert ('', new.id, "mobile", old.mobile, new.mobile,  new.updated_by ); end if;
    if ( coalesce(old.gender, '') <> coalesce(new.gender, '') ) then call appointment_history_insert ('', new.id, "gender", old.gender, new.gender,  new.updated_by ); end if;
    if ( coalesce(old.more_info, '') <> coalesce(new.more_info, '') ) then call appointment_history_insert ('', new.id, "more_info", old.more_info, new.more_info,  new.updated_by ); end if;
    if ( coalesce(old.total_cost, '') <> coalesce(new.total_cost, '') ) then call appointment_history_insert ('', new.id, "total_cost", old.total_cost, new.total_cost,  new.updated_by ); end if;
    if ( coalesce(old.offered_cost, '') <> coalesce(new.offered_cost, '') ) then call appointment_history_insert ('', new.id, "offered_cost", old.offered_cost, new.offered_cost,  new.updated_by ); end if;
    if ( coalesce(old.coupon_code, '') <> coalesce(new.coupon_code, '') ) then call appointment_history_insert ('', new.id, "coupon_code", old.coupon_code, new.coupon_code,  new.updated_by ); end if;
    if ( coalesce(old.payment_mode, '') <> coalesce(new.payment_mode, '') ) then call appointment_history_insert ('', new.id, "payment_mode", old.payment_mode, new.payment_mode,  new.updated_by ); end if;
    if ( coalesce(old.prepaid_channel, '') <> coalesce(new.prepaid_channel, '') ) then call appointment_history_insert ('', new.id, "prepaid_channel", old.prepaid_channel, new.prepaid_channel,  new.updated_by ); end if;
    if ( coalesce(old.redemption_code, '') <> coalesce(new.redemption_code, '') ) then call appointment_history_insert ('', new.id, "redemption_code", old.redemption_code, new.redemption_code,  new.updated_by ); end if;
    if ( coalesce(old.coupon_discount, '') <> coalesce(new.coupon_discount, '') ) then call appointment_history_insert ('', new.id, "coupon_discount", old.coupon_discount, new.coupon_discount,  new.updated_by ); end if;
    if ( coalesce(old.glam_discount, '') <> coalesce(new.glam_discount, '') ) then call appointment_history_insert ('', new.id, "glam_discount", old.glam_discount, new.glam_discount,  new.updated_by ); end if;
    if ( coalesce(old.salon_discount, '') <> coalesce(new.salon_discount, '') ) then call appointment_history_insert ('', new.id, "salon_discount", old.salon_discount, new.salon_discount,  new.updated_by ); end if;
    if ( coalesce(old.discount_perc, '') <> coalesce(new.discount_perc, '') ) then call appointment_history_insert ('', new.id, "discount_perc", old.discount_perc, new.discount_perc,  new.updated_by ); end if;
    if ( coalesce(old.voucher_payment, '') <> coalesce(new.voucher_payment, '') ) then call appointment_history_insert ('', new.id, "voucher_payment", old.voucher_payment, new.voucher_payment,  new.updated_by ); end if;
    if ( coalesce(old.prepaid_amount, '') <> coalesce(new.prepaid_amount, '') ) then call appointment_history_insert ('', new.id, "prepaid_amount", old.prepaid_amount, new.prepaid_amount,  new.updated_by ); end if;
    if ( coalesce(old.balance_paid, '') <> coalesce(new.balance_paid, '') ) then call appointment_history_insert ('', new.id, "balance_paid", old.balance_paid, new.balance_paid,  new.updated_by ); end if;
    if ( coalesce(old.status, '') <> coalesce(new.status, '') ) then call appointment_history_insert ('', new.id, "status", old.status, new.status,  new.updated_by ); end if;
    if ( coalesce(old.invoice_time, '') <> coalesce(new.invoice_time, '') ) then call appointment_history_insert ('', new.id, "invoice_time", old.invoice_time, new.invoice_time,  new.updated_by ); end if;
    if ( coalesce(old.rating, '') <> coalesce(new.rating, '') ) then call appointment_history_insert ('', new.id, "rating", old.rating, new.rating,  new.updated_by ); end if;
    if ( coalesce(old.dependent_appointment_id, '') <> coalesce(new.dependent_appointment_id, '') ) then call appointment_history_insert ('', new.id, "dependent_appointment_id", old.dependent_appointment_id, new.dependent_appointment_id,  new.updated_by ); end if;
    if ( coalesce(old.address, '') <> coalesce(new.address, '') ) then call appointment_history_insert ('', new.id, "address", old.address, new.address,  new.updated_by ); end if;
end;//
delimiter ;

drop procedure if exists `gift_voucher_history_insert`;
delimiter //
create procedure `gift_voucher_history_insert`
(
    code varchar(10),
    field varchar(30),
    old_value varchar(30),
    new_value varchar(30),
    created_by int(11)
)
begin
insert into `gift_voucher_history` (
    `code`,
    `field`,
    `old_value`,
    `new_value`,
    `created_by`,
    `created_at`
) values (
    code,
    field,
    old_value,
    new_value,
    created_by,
    now()
);
end;//
delimiter ;

drop trigger if exists `gift_voucher_history_trigger`;
delimiter //
create trigger `gift_voucher_history_trigger`
after update on `gift_voucher`
for each row
begin
    if ( coalesce(old.status, '') <> coalesce(new.status, '') ) then call gift_voucher_history_insert (new.code, "status", old.status, new.status,  new.updated_by ); end if;
    if ( coalesce(old.redeem_status, '') <> coalesce(new.redeem_status, '') ) then call gift_voucher_history_insert (new.code, "redeem_status", old.redeem_status, new.redeem_status,  new.updated_by ); end if;
end;//
delimiter ;
