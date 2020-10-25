const std = @import("std");
// amqp
const frame_method: u16 = 1;
const frame_header: u16 = 2;
const frame_body: u16 = 3;
const frame_heartbeat: u16 = 8;
const frame_min_size: u16 = 4096;
const frame_end: u16 = 206;
const reply_success: u16 = 200;
const content_too_large: u16 = 311;
const no_consumers: u16 = 313;
const connection_forced: u16 = 320;
const invalid_path: u16 = 402;
const access_refused: u16 = 403;
const not_found: u16 = 404;
const resource_locked: u16 = 405;
const precondition_failed: u16 = 406;
const frame_error: u16 = 501;
const syntax_error: u16 = 502;
const command_invalid: u16 = 503;
const channel_error: u16 = 504;
const unexpected_frame: u16 = 505;
const resource_error: u16 = 506;
const not_allowed: u16 = 530;
const not_implemented: u16 = 540;
const internal_error: u16 = 541;
pub const CONNECTION = 10; // CLASS
pub const START = 10; // METHOD
pub const START_OK = 11; // METHOD
pub const SECURE = 20; // METHOD
pub const SECURE_OK = 21; // METHOD
pub const TUNE = 30; // METHOD
pub const TUNE_OK = 31; // METHOD
pub const OPEN = 40; // METHOD
pub const OPEN_OK = 41; // METHOD
pub const CLOSE = 50; // METHOD
pub const CLOSE_OK = 51; // METHOD
pub const BLOCKED = 60; // METHOD
pub const UNBLOCKED = 61; // METHOD
pub const CHANNEL = 20; // CLASS
pub const OPEN = 10; // METHOD
pub const OPEN_OK = 11; // METHOD
pub const FLOW = 20; // METHOD
pub const FLOW_OK = 21; // METHOD
pub const CLOSE = 40; // METHOD
pub const CLOSE_OK = 41; // METHOD
pub const EXCHANGE = 40; // CLASS
pub const DECLARE = 10; // METHOD
pub const DECLARE_OK = 11; // METHOD
pub const DELETE = 20; // METHOD
pub const DELETE_OK = 21; // METHOD
pub const QUEUE = 50; // CLASS
pub const DECLARE = 10; // METHOD
pub const DECLARE_OK = 11; // METHOD
pub const BIND = 20; // METHOD
pub const BIND_OK = 21; // METHOD
pub const UNBIND = 50; // METHOD
pub const UNBIND_OK = 51; // METHOD
pub const PURGE = 30; // METHOD
pub const PURGE_OK = 31; // METHOD
pub const DELETE = 40; // METHOD
pub const DELETE_OK = 41; // METHOD
pub const BASIC = 60; // CLASS
pub const QOS = 10; // METHOD
pub const QOS_OK = 11; // METHOD
pub const CONSUME = 20; // METHOD
pub const CONSUME_OK = 21; // METHOD
pub const CANCEL = 30; // METHOD
pub const CANCEL_OK = 31; // METHOD
pub const PUBLISH = 40; // METHOD
pub const RETURN = 50; // METHOD
pub const DELIVER = 60; // METHOD
pub const GET = 70; // METHOD
pub const GET_OK = 71; // METHOD
pub const GET_EMPTY = 72; // METHOD
pub const ACK = 80; // METHOD
pub const REJECT = 90; // METHOD
pub const RECOVER_ASYNC = 100; // METHOD
pub const RECOVER = 110; // METHOD
pub const RECOVER_OK = 111; // METHOD
pub const TX = 90; // CLASS
pub const SELECT = 10; // METHOD
pub const SELECT_OK = 11; // METHOD
pub const COMMIT = 20; // METHOD
pub const COMMIT_OK = 21; // METHOD
pub const ROLLBACK = 30; // METHOD
pub const ROLLBACK_OK = 31; // METHOD
