/**
 * ---------------------------------------------------------------------------
 *   Copyright (C) 2008 0x6e6562
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 * ---------------------------------------------------------------------------
 **/
package org.amqp
{

    import flash.utils.ByteArray;

    /**
     *   THIS IS AUTO-GENERATED CODE. DO NOT EDIT!
     **/
    public class AMQP
    {
        public static var FRAME_METHOD:int = 1;
        public static var FRAME_HEADER:int = 2;
        public static var FRAME_BODY:int = 3;
        public static var FRAME_OOB_METHOD:int = 4;
        public static var FRAME_OOB_HEADER:int = 5;
        public static var FRAME_OOB_BODY:int = 6;
        public static var FRAME_TRACE:int = 7;
        public static var FRAME_HEARTBEAT:int = 8;
        public static var FRAME_MIN_SIZE:int = 4096;
        public static var FRAME_END:int = 206;
        public static var REPLY_SUCCESS:int = 200;
        public static var NOT_DELIVERED:int = 310;
        public static var CONTENT_TOO_LARGE:int = 311;
        public static var CONNECTION_FORCED:int = 320;
        public static var INVALID_PATH:int = 402;
        public static var ACCESS_REFUSED:int = 403;
        public static var NOT_FOUND:int = 404;
        public static var RESOURCE_LOCKED:int = 405;
        public static var FRAME_ERROR:int = 501;
        public static var SYNTAX_ERROR:int = 502;
        public static var COMMAND_INVALID:int = 503;
        public static var CHANNEL_ERROR:int = 504;
        public static var RESOURCE_ERROR:int = 506;
        public static var NOT_ALLOWED:int = 530;
        public static var NOT_IMPLEMENTED:int = 540;
        public static var INTERNAL_ERROR:int = 541;
        public static var PROTOCOL_MAJOR:int = 8;
        public static var PROTOCOL_MINOR:int = 0;
        public static var PORT:int = 5672;

        public static function generateHeader():ByteArray {
            var buffer:ByteArray = new ByteArray();
            buffer.writeUTFBytes("AMQP");
            buffer.writeByte(1);
            buffer.writeByte(1);
            buffer.writeByte(PROTOCOL_MAJOR);
            buffer.writeByte(PROTOCOL_MINOR);
            return buffer;
        }
    }
}