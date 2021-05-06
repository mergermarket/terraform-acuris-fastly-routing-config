import unittest
import os
import re
import json
from subprocess import check_call, check_output

FIXTURES_DIR = os.path.join(os.path.dirname(__file__), 'infra')

def assert_output(testname, output):
    with open(f'test/files/{testname}.json', 'r') as f:
        data = json.load(f)
    
        assert sorted(data) == sorted(output)

def test_resources(apply_runner):
    os.environ.update({'FASTLY_API_KEY': 'querty'})
    _, output = apply_runner(
        FIXTURES_DIR,
        defaults_vcl_recv_condition="test-cond",
        defaults_backend_name="test-backend",
        defaults_backend_host="test-host",
        ssl_ca_cert="line 1\nline 2\nline 3\n",
        ssl_check_cert="never",
        ssl_sni_hostname="test-sni.hostname"
        )

    assert_output("output", output)